## Harvard Slurm Cluster 

First you'll need to get access [to the cluster][account].

### [singluarity](singularity)

This prints the singularity help from `coxgpu05`. As of 2017-09-13, `coxgpu05` is the only node on the cluster that supports singluarity. Singularity can [import docker images][docker]. Even with an RC Account, you will need to be added to the `cox_lab` group in order to use this machine. 

Run `bash singularity/test.sh`
- Outputs go to `singularity/0.out`
- Errors go to `singularity/0.err`

### [pytorch](pytorch)

This prints the documentation for pytorch from 4 different CPUs on 1-4 different cluster nodes. We create and use a conda virtual environment for python. We use `sbatch --array` to set up 4 parallel jobs differing only by `$SLURM_ARRAY_TASK_ID`. Full documentation for the `--array` option is [here][array].

Run `bash pytorch/test.sh`
- Outputs go to `pytorch/*.out`
- Errors go to `pytorch/*.err`

## Manage the jobs

Run this to check the status of the jobs:
```
squeue
```

[account]:https://portal.rc.fas.harvard.edu/request/account/new
[docker]:http://singularity.lbl.gov/docs-import

[array]:https://slurm.schedmd.com/job_array.html
