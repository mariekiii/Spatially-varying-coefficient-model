#!/bin/sh 
########## Begin MOAB/Slurm header ##########
#
# Give job a reasonable name
#MOAB -N svcm1
#
# Request number of nodes and CPU cores per node for job
#MOAB -l nodes=1:ppn=20
#
# Estimated wallclock time for job
#MOAB -l walltime=01:00:00:00
#
# Write standard output and errors in same file
#MOAB -j oe 
#
# Send mail when job begins, aborts and ends
#MOAB -m bae
#
########### End MOAB header ##########

echo "Working Directory:                    $PWD"
echo "Running on host                       $HOSTNAME"
echo "Job id:                               $MOAB_JOBID"
echo "Job name:                             $MOAB_JOBNAME"
echo "Number of nodes allocated to job:     $MOAB_NODECOUNT"
echo "Number of cores allocated to job:     $MOAB_PROCCOUNT"


# Setup R
module load math/R/3.4.4

Rscript ~/Spatially-varying-coefficient-model/compute_svcm_hpc.R
