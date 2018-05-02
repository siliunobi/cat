Concerned data structures:  

            1   2   3               4    5       6
op record : Oid Nat VectorTimestamp Bool ReadSet WriteSet -> Record .

pr MAP{Oid,Record} * (sort Map{Oid,Record} to Log) .

pr MAP{Oid,Nat} * (sort Map{Oid,Nat} to VectorTimestamp) .


Rules:

1. gotTxns -> executing, 123456

2. executing -> committed, 3456

3. executing -> aborted, 34

4. committedVTS changes, 3

5. In any case, GT -> GT + 1


executing
committed: executing trans moved to committed attr
aborted: executing trans moved to aborted attr 
comittedVTS modified 


Tag module 

how to run the tag system

load meta.maude

load YOUR maude file

(tag YOUR-MODULE .)
(show module XXX .)


