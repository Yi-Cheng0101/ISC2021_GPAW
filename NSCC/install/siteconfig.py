compiler = 'icc'
mpicompiler = 'mpicc'
mpilinker = 'mpicc'

xc = '/home/users/industry/isc2020/iscst07/scratch/packages/libxc-4.3.4/'
include_dirs += [xc + 'include']
extra_link_args += [xc + 'lib/libxc.a']
if 'xc' in libraries:
	        libraries.remove('xc')



parallel_python_interpreter = False
extra_link_args += ['/home/users/industry/isc2020/iscst07/scratch/packages/openblas/lib/libopenblas.a']
