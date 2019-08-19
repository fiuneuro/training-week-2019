#!/bin/bash

# Environment for 2019 training week
# Set up Nipype, FSL, AFNI, Freesurfer, ANTS, MATLAB
module add miniconda/2.7
module add fsl/5.0.11
module load ANTs/1.9.4
module add freesurfer
module add matlab/2013b/front
module add mricron/6-2013
module add afni/openmp
module load dcm2niix
source /home/applications/fsl/5.0.7/etc/fslconf/fsl.sh #This will set up my $FSLDIR

# Set up project-specific python environment
source activate /home/data/cis/training-week-2019/env

# Freesurfer project specific subj dir
# Set ANTs threading to 1
export ITK_GLOBAL_DEFAULT_NUMBER_OF_THREADS=1
# Set Python path to project-specific folder
PYTHONPATH="${PYTHONPATH}:/home/data/cis/training-week-2019/"
PATH="${PATH}:/home/applications/freesurfer_dcnlab/bin/freesurfer/"

# Set SPM path
export MATLABCMD="$(which matlab)"
export SPM_PATH=/home/applications/spm12/

export project_name="[CIS]"
