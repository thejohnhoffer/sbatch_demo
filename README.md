## Harvard Slurm Cluster 

First you'll need to get access [to the cluster][account].

### singluarity

This prints the singularity help from coxgpu05. As of 2017-09-13, this is the only node on the cluster that supports singluarity. Singularity can [import docker images][docker].

Run `bash singularity/test.sh`
- Outputs go to `singularity/0.out`
- Errors go to `singularity/0.err`

### pytorch

This prints the documentation for pytorch from 4 different CPUs on 1-4 different cluster nodes. We create and use the PYTORCH virtual environment.

- Run `bash pytorch/test.sh`
- Outputs go to `pytorch/*.out`
- Errors go to `pytorch/*.err`

## Manage the jobs

Run this to check the status of the jobs:
```
squeue
```

[account]:https://portal.rc.fas.harvard.edu/request/account/new
[docker]:http://singularity.lbl.gov/docs-import
