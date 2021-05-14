compiler = 'icc'
mpicompiler = 'mpiicc'
mpilinker = 'mpiicc'

# - static linking:
xc = '/home/l/lcl_uotiscscc/lcl_uotiscsccs1040/yicheng/gpaw-20.10.0/libxc-4.3.4/install/'
include_dirs += [xc + 'include']
extra_link_args += [xc + 'lib/libxc.a']
if 'xc' in libraries:
        libraries.remove('xc')


#extra_compile_args += ['-qopenmp']
#extra_link_args += ['-qopenmp']

#extra_link_args += ['-lgfortran']
#extra_link_args += ['-lifcore']


#fftw = True      /
#libraries += ['fftw3'] /

parallel_python_interpreter = False

extra_link_args += ['/scinet/niagara/software/2019b/opt/intel-2019u4/openblas/0.3.7/lib/libopenblas.a']
