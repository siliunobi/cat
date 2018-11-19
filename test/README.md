# If you want to try CAT:

Run the script: ```run_cat.sh```

The 13 parameters for the script are (in order):

- The folder of Maude source files that specify the distributed transaction system
- The main Maude file that specifies the system dynamics (to which the monitor will be added)
- The consistency property to be analyzed
- The number of each of the following parameters: read-only, write-only, and read-write transactions; operations for each type of transaction; clients; servers; keys; and replicas per key.

The output, either "No solution" or a counterexmaple, will be stored in ```xxx_copy/cat.out```

Example: ```./run_cat.sh rola rola-mc.maude ra 0 0 3 0 0 2 2 2 2 1```
