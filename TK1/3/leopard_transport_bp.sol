Problem:    leopard_transport_bp
Rows:       9
Columns:    15 (15 integer, 0 binary)
Non-zeros:  42
Status:     INTEGER OPTIMAL
Objective:  TotalCost = 9400 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 TotalCost                9400                             
     2 SupplyCap[Salatiga]
                                 100                         100 
     3 SupplyCap[Semarang]
                                 105                         105 
     4 SupplyCap[Emergency]
                                   0                          10 
     5 DemandFulfill[Purwokerto]
                                  55            55             = 
     6 DemandFulfill[Pekalongan]
                                  90            90             = 
     7 DemandFulfill[Surakarta]
                                  50            50             = 
     8 DemandFulfill[KotaSemarang]
                                  20            20             = 
     9 NoExpandOnEmergency[Emergency]
                                   0            -0             = 

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 x[Salatiga,Purwokerto]
                    *             55             0               
     2 x[Salatiga,Pekalongan]
                    *             45             0               
     3 x[Salatiga,Surakarta]
                    *              0             0               
     4 x[Salatiga,KotaSemarang]
                    *              0             0               
     5 x[Semarang,Purwokerto]
                    *              0             0               
     6 x[Semarang,Pekalongan]
                    *             45             0               
     7 x[Semarang,Surakarta]
                    *             50             0               
     8 x[Semarang,KotaSemarang]
                    *             20             0               
     9 x[Emergency,Purwokerto]
                    *              0             0               
    10 x[Emergency,Pekalongan]
                    *              0             0               
    11 x[Emergency,Surakarta]
                    *              0             0               
    12 x[Emergency,KotaSemarang]
                    *              0             0               
    13 y[Salatiga]  *              0             0            50 
    14 y[Semarang]  *             10             0            50 
    15 y[Emergency] *              0             0             = 

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
