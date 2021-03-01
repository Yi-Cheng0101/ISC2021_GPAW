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
