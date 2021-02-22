# ISC2021_GPAW

## About ISC Competition
[TOC]

# GPAW
* ## Introduction
    >GPAW is an open source program package for quantum mechanical atomistic simulations. It is based on the density-functional theory (DFT) and the projector-augmented wave (PAW) method, and it includes also more advanced models such as time-dependent density-functional theory and GW-approximation. Physical quantities that can be studied include equilibrium geometries of molecules, crystals, surfaces and various nanostructures, magnetic properties, formation energies, optical spectra, just to name a few.

    >GPAW supports several different basis sets for discretizing the underlying equations: real-space grids, plane waves, and localized atom-centered functions. GPAW is implemented in the combination of Python and C programming languages, and it is parallelized with MPI and OpenMP. Depending on the input data set, GPAW can scale to thousands of CPUs.

    >Main Website: https://wiki.fysik.dtu.dk/gpaw/
Git: https://gitlab.com/gpaw/gpaw

    >To get Started: [click here](https://hpcadvisorycouncil.atlassian.net/wiki/spaces/HPCWORKS/pages/1874296863/GPAW).

* ## Download and Install
    ```
    //download 
    wget https://pypi.org/packages/source/g/gpaw/gpaw-20.10.0.tar.gz 
    tar xf gpaw-20.10.0.tar.gz
    cd gpaw-20.10.0

    //install supporting packages 
    sudo yum -y install libxc libxc-devel python3-devel numpy scipy python3-numpy python3-scipy

    //install python packages to user's folder
    export PYTHONUSERBASE=$PWD/install
    pip3 install pytest --user
    pip3 install scipy --user

    //uninstall preinstalled gpaw
    pip3 uninstall -y -v gpaw
    ```  
* ## Building GPAW with Intel compilers:
    ```
    compiler = 'icc'
    mpicompiler = 'mpicc'
    mpilinker = 'mpicc'

    parallel_python_interpreter = True
    scalapack = True

    libraries.append('xc')
    library_dirs += ['$MKLROOT']
    libraries = ['mkl_intel_lp64', 'mkl_sequential', '       mkl_core',
             'mkl_lapack95_lp64', 'mkl_scalapack_lp64',   'mkl_blacs_openmpi_lp64'
             ]
    ```
    
    
* ## Install GPAW
  ```
  module load intel/2020.4.304
  module load mkl/2020.4.304
  module load hpcx/2.7.0
  export GPAW_CONFIG=$PWD/siteconfig.py
  pip3 install -v gpaw --user
  ```
  
  * mkl
Math Kernel Library (MKL) 
