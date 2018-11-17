# If you want to try CAT:

Run the script: ```run_cat.sh```

The parameters for the script are (in order):

- The folder of Maude source files that specify the distributed transaction system
- The main Maude file that specifies the system dynamics
- The consistency property to be analyzed<br />
- The number of each of the following parameters: read-only, write-only, and read-write transactions; operations for each type of transaction; clients; servers; keys; and replicas per key.

The output will be stored in cat.out

Example:
```
./run_cat.sh rola rola-mc.maude ra 0 0 3 0 0 2 2 2 1
```
