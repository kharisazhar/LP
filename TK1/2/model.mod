# SET
set P;  

# PARAMS
param cost{P} >= 0;

# OUTPUT
param m{P} >= 0;  
param d{P} >= 0; 
param t{P} >= 0;  

# TARGET
param M_target >= 0;  
param D_target >= 0;  
param T_target >= 0; 

# VARIABLE
var x{p in P} integer >= 0;

# MINIMIZE FORMULA
minimize TotalCost: sum{p in P} cost[p] * x[p];

s.t. Media: sum{p in P} m[p] * x[p] >= M_target;
s.t. Digital:sum{p in P} d[p] * x[p] >= D_target;
s.t. Transport: sum{p in P} t[p] * x[p] >= T_target;

# OUTPUT
solve;

printf "\n=== SOLUSI OPTIMAL ===\n";
printf "Total Cost = %d\n", TotalCost;

printf "\nJumlah paket:\n";
printf {p in P}: "%s : x = %d\n", p, x[p];

printf "\nCapaian akhir:\n";
printf "Media      = %d\n", sum{p in P} m[p]*x[p];
printf "Digital    = %d\n", sum{p in P} d[p]*x[p];
printf "Transport  = %d\n", sum{p in P} t[p]*x[p];

end;
