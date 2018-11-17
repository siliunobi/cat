# CAT

We have implemented the Consistency Analysis Tool (CAT) that automates the method in [this paper](https://github.com/siliunobi/cat/blob/master/tacas19_tr.pdf). CAT takes as input:

- A Maude model of the DTS specified as explained in [this paper](https://github.com/siliunobi/cat/blob/master/tacas19_tr.pdf).
- The number of each of the following parameters: read-only, write-only, and read-write transactions; operations for each type of transaction; clients; servers; keys; and replicas per key. The tool analyzes the desired property for all initial states with the number of each of these parameters.
- The consistency property to be analyzed.

Given these inputs, CAT performs the following steps:

1. adds the monitoring mechanism to the user-provided system model;
2. generates all possible initial states with the user-provided number of the different parameters; and
3. executes the following command to search, from all generated initial states, for one reachablefinal state where the consistency property does not hold:

```
search [1] init =>! C:Configuration < M:Oid : Monitor | log: LOG:Log clock: N:Nat >

  such that not consistency-property(LOG:Log).
```

where the functions **init** and **consistency-property** are parametric, and are instantiated by the user inputs; e.g., **consistency-property** is replaced by the corresponding function rc, psi, nmsi, ... , or ser, depending on which property to analyze.

CAT outputs either “No solution,” meaning that all runs from all the given initial states satisfy the desired consistency property, or a counterexample (in Maude at the moment) showing a behavior that violates the property.

[Try me!](https://github.com/siliunobi/cat/blob/master/tool/)
