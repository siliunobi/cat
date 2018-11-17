# If you want to try CAT:

Run the script: ```run_cat.sh```

The parameters for the script are:

1. The folder of Maude source files that specify the distributed transaction system
2. The main Maude file that specifies the system dynamics
3. The consistency property to be analyzed
4-12. The number of each of the following parameters: read-only, write-only, and read-write transactions; operations for each type of transaction; clients; servers; keys; and replicas per key.

The output will be stored in cat.out

Example:
```
./run_cat.sh rola rola-mc.maude ra 0 0 3 0 0 2 2 2 1
```
