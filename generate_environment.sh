#!/bin/bash
module add miniconda/2.7
conda create -python=3.6 -p /home/data/cis/training-week-2019/env pip
source activate /home/data/cis/training-week-2019/env
conda install numpy libgfortran sympy ply funcsigs cython ipython ipython-notebook matplotlib seaborn pandas numexpr scikit-learn tornado accelerate Biopython dateutil
pip install nibabel pyyaml ipywidgets
pip install https://github.com/nipy/nipy/archive/master.zip
pip install https://github.com/moloney/dcmstack/archive/master.zip
pip install nipype
conda list > /home/data/cis/training-week-2019/requirements.txt
