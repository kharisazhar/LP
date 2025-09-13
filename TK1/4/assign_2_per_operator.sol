Problem:    assign_2_per_operator
Rows:       10
Columns:    18 (18 integer, 18 binary)
Non-zeros:  54
Status:     INTEGER OPTIMAL
Objective:  TotalCost = 415 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 TotalCost                 415                             
     2 OneOperatorPerMachine[1]
                                   1             1             = 
     3 OneOperatorPerMachine[2]
                                   1             1             = 
     4 OneOperatorPerMachine[3]
                                   1             1             = 
     5 OneOperatorPerMachine[4]
                                   1             1             = 
     6 OneOperatorPerMachine[5]
                                   1             1             = 
     7 OneOperatorPerMachine[6]
                                   1             1             = 
     8 OperatorCapacity[O1]
                                   2             2             = 
     9 OperatorCapacity[O2]
                                   2             2             = 
    10 OperatorCapacity[O3]
                                   2             2             = 

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 x[O1,1]      *              0             0             1 
     2 x[O1,2]      *              0             0             1 
     3 x[O1,3]      *              0             0             1 
     4 x[O1,4]      *              1             0             1 
     5 x[O1,5]      *              0             0             1 
     6 x[O1,6]      *              1             0             1 
     7 x[O2,1]      *              1             0             1 
     8 x[O2,2]      *              1             0             1 
     9 x[O2,3]      *              0             0             1 
    10 x[O2,4]      *              0             0             1 
    11 x[O2,5]      *              0             0             1 
    12 x[O2,6]      *              0             0             1 
    13 x[O3,1]      *              0             0             1 
    14 x[O3,2]      *              0             0             1 
    15 x[O3,3]      *              1             0             1 
    16 x[O3,4]      *              0             0             1 
    17 x[O3,5]      *              1             0             1 
    18 x[O3,6]      *              0             0             1 

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
