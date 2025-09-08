/* Model Linear Programming Kedai (LP kontinu) */

var S >= 0, <= 600;   /* Standard */
var A >= 0, <= 700;   /* Advance */
var B >= 0, <= 500;   /* Boba */

maximize Profit:
  10000*S + 12000*A + 15000*B;

/* Kendala bahan */
s.t. Topping: 2*S + 3*A + 5*B <= 40;
s.t. EsKrim:  4*S + 4*A + 3*B <= 60;
s.t. Air:     5*S + 6*A + 1*B <= 80;

solve;

/* Tampilkan hasil keputusan & KPI pemakaian bahan */
printf "\n=== KEPUTUSAN PRODUKSI (LP) ===\n";
printf "S (Standard) = %.6f cup\n", S;
printf "A (Advance)  = %.6f cup\n", A;
printf "B (Boba)     = %.6f cup\n", B;

printf "\n=== PROFIT ===\n";
printf "Profit (Rp)  = %.2f\n", Profit;

printf "\n=== PEMAKAIAN BAHAN ===\n";
printf "Topping terpakai = %.6f dari 40\n", 2*S + 3*A + 5*B;
printf "Es krim terpakai = %.6f dari 60\n", 4*S + 4*A + 3*B;
printf "Air terpakai     = %.6f dari 80\n", 5*S + 6*A + 1*B;

end;
