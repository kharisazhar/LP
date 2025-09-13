# ================================
# Assignment with 2 machines/operator (GMPL)
# Minimize total operating cost
# ================================
set O;                      # operators
set M;                      # machines

param cost{O,M} >= 0;       # cost of operator o on machine m
param cap{O}   >= 0;        # number of machines per operator (here: 2)

var x{O,M} binary;          # 1 if operator o runs machine m

minimize TotalCost:
  sum{o in O, m in M} cost[o,m] * x[o,m];

s.t. OneOperatorPerMachine{m in M}:      # each machine is assigned once
  sum{o in O} x[o,m] = 1;

s.t. OperatorCapacity{o in O}:           # each operator gets exactly cap[o] machines
  sum{m in M} x[o,m] = cap[o];

solve;

# --- report
printf "\n=== OPTIMAL ASSIGNMENT ===\n";
printf "Total Cost = %d\n\n", sum{o in O, m in M} cost[o,m] * x[o,m];

printf "Pairs (o -> m) with x=1:\n";
printf {o in O, m in M: x[o,m] > 0.5} "%-10s -> m%-2s  (cost=%d)\n", o, m, cost[o,m];

# per-operator summary (avoid boolean in sum by using x directly)
printf "\nPer-operator:\n";
printf {o in O} "%-10s : machines = %d | subtotal = %d\n",
  o,
  sum{m in M} x[o,m],
  sum{m in M} cost[o,m]*x[o,m];

end;
