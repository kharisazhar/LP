# ===============================
# Transportation with expansion + emergency (GMPL) - FIXED
# ===============================
set S;                         # sources (warehouses + Emergency)
set D;                         # destinations (stores)

param supply{S} >= 0;          # baseline capacity
param demand{D} >= 0;          # demand
param ship_cost{S,D} >= 0;     # shipping unit cost s->d

# Use integer 0/1 for flags (GMPL doesn't support 'binary' for param)
param is_real{S} integer, >=0, <=1;   # 1: real warehouse, 0: Emergency
param cap_cost{S}   >= 0;             # capacity add cost per unit (0 for Emergency)
param max_cap_add{S} >= 0;            # upper bound for capacity add (0 for Emergency)

var x{S,D} integer >= 0;              # shipped units
# IMPORTANT: index 's in S' must be declared here before using [s]
var y{s in S} integer >= 0, <= max_cap_add[s];  # capacity added (real only)

minimize TotalCost:
      sum{s in S, d in D} ship_cost[s,d]*x[s,d]
    + sum{s in S}         cap_cost[s]*y[s];

s.t. SupplyCap{s in S}:
    sum{d in D} x[s,d] <= supply[s] + y[s];

s.t. DemandFulfill{d in D}:
    sum{s in S} x[s,d] = demand[d];

# Block expansion on non-real sources (Emergency)
s.t. NoExpandOnEmergency{s in S: is_real[s] = 0}:
    y[s] = 0;

solve;

# --- reporting
printf "\n=== OPTIMAL RESULT ===\n";
printf "Shipping cost  = %d\n", sum{s in S, d in D} ship_cost[s,d]*x[s,d];
printf "Expansion cost = %d\n", sum{s in S}         cap_cost[s]*y[s];
printf "Total cost     = %d\n\n", TotalCost;

printf "Shipments (x>0):\n";
printf {s in S, d in D: x[s,d] > 0} "%-10s -> %-12s : %d\n", s, d, x[s,d];

printf "\nCapacity usage (used / baseline + added):\n";
printf {s in S} "%-10s : %d / %d + %d (added=%d)\n",
       s, sum{d in D} x[s,d], supply[s], y[s], y[s];

printf "\nDemand served:\n";
printf {d in D} "%-12s : %d / %d\n",
       d, sum{s in S} x[s,d], demand[d];

# If 'Emergency' exists in S, this prints its usage; otherwise it will be zero implicitly
printf "\nEmergency used (units) = %d\n",
       sum{d in D} (if "Emergency" in S then x["Emergency", d] else 0);

end;
