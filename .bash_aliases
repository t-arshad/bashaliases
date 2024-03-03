alias installdependencies='sudo apt-get -y update ; sudo apt install -y emacs make cmake g++ gcc gfortran gdb python3 python-is-python3 python3-numpy openmpi-bin libopenmpi-dev libqt5x11extras5'
alias installchrome='cd ~;mkdir tmpchrome;cd tmpchrome;sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;sudo dpkg -i google-chrome-stable_current_amd64.deb;sudo apt install --fix-broken -y;sudo dpkg -i google-chrome-stable_current_amd64.deb;cd ~;rm -rf tmpchrome'
alias installnautilus='sudo apt install nautilus -y'
alias param='code ~/SWMF/run/PARAM.in'
alias lj='grep -l 'run' ~/SWMF/PC/FLEKS/.vscode/launch.json | xargs sed -i 's/run/run_test/g''
alias targz='tar -xf *.tar.gz'
alias paraview=' ~/Apps/ParaView/bin/paraview &!  ; disown' 
alias aptfix='sudo dpkg --configure -a'
alias aliases='git -C ~/bashaliases pull;nano ~/.bash_aliases;git -C ~/bashaliases commit -a -m "Updated .bash_aliases";git -C ~/bashaliases push;. ~/.bash_aliases'
alias aliasesemacs='git -C ~/bashaliases pull;emacs ~/.bash_aliases;git -C ~/bashaliases commit -a -m "Updated .bash_aliases";git -C ~/bashaliases push;. ~/.bash_aliases'
alias gitconfig='git config --global user.email "talhaa@umich.edu";git config --global user.name "Talha Arshad"'
alias alldebug='cd ~/SWMF;./Config.pl -debug -O0;make clean;make clean -C ~/SWMF/PC/FLEKS/;make distclean -C ~/SWMF/util/AMREX/;cd ~/SWMF/util/AMREX/;./configure --prefix InstallDir --debug yes;make -j;make install;cd ~/SWMF'
alias allnodebug='cd ~/SWMF;./Config.pl -nodebug -O4;make clean;make clean -C ~/SWMF/PC/FLEKS/;make distclean -C ~/SWMF/util/AMREX/;cd ~/SWMF/util/AMREX/;./configure --prefix InstallDir --debug no;make -j;make install;cd ~/SWMF'
alias SWMFdebug='cd ~/SWMF;./Config.pl -debug -O0;make clean;make clean -C ~/SWMF/PC/FLEKS/'
alias SWMFnodebug='cd ~/SWMF;./Config.pl -nodebug -O4;make clean;make clean -C ~/SWMF/PC/FLEKS/'
alias clonesetSWMF='cd ~;git clone git@github.com:SWMFsoftware/SWMF.git;cd SWMF;./Config.pl -install;./Config.pl -debug -O0;make test16 -j NP=8;cp -R ~/SWMF ~/SWMFbackup;code ~/SWMF/test16_gmpc.diff'
alias quicksetSWMF='cd ~/SWMFbackup;git pull;cd ~/SWMFbackup/PC/FLEKS;git pull;cd ~;rm -rf SWMF;cp -R ~/SWMFbackup ~/SWMF;cd ~/SWMF;touch Makefile.conf;./Config.pl -install;./Config.pl -debug -O0;make test16 -j NP=8;code ~/SWMF/test16_gmpc.diff'
alias cdSWMF='cd ~/SWMF'
alias cdFLEKS='cd ~/SWMF/PC/FLEKS'
alias cdrun='cd ~/SWMF/run'
alias cdAMREX='cd ~/SWMF/util/AMREX'
alias domain='code ~/SWMF/PC/FLEKS/src/Domain.cpp'
alias pic='code ~/SWMF/PC/FLEKS/src/Pic.cpp'
alias mr32='cd ~/SWMF;make -j;cd run;mpirun --use-hwthread-cpus -n 32 SWMF.exe;./PostProc.pl'
alias mr24='cd ~/SWMF;make -j;cd run;mpirun -n 24 SWMF.exe;./PostProc.pl'
alias mr16='cd ~/SWMF;make -j;cd run;mpirun -n 16 SWMF.exe;./PostProc.pl'
alias mr8='cd ~/SWMF;make -j;cd run;mpirun -n 8 SWMF.exe;./PostProc.pl'
alias t16='cdSWMF;make test16 -j; code ~/SWMF/test16_gmpc.diff'
alias t168='cdSWMF;make test16 -j NP=8; code ~/SWMF/test16_gmpc.diff'
alias t17='cdSWMF;make test17 -j; code ~/SWMF/test17_gmpc.diff'
alias t178='cdSWMF;make test17 -j NP=8; code ~/SWMF/test17_gmpc.diff'
alias t18='cdSWMF;make test18 -j; code ~/SWMF/test18_gmpc.diff'
alias t188='cdSWMF;make test18 -j NP=8; code ~/SWMF/test18_gmpc.diff'
alias t678='cdSWMF;make test17 -j;make test18 -j;make test16 -j'
alias t6788='cdSWMF;make test17 -j NP=8; code ~/SWMF/test17_gmpc.diff;make test18 -j NP=8; code ~/SWMF/test18_gmpc.diff;make test16 -j NP=8; code ~/SWMF/test16_gmpc.diff'
alias t160='cdSWMF;make test16 -j;BT0'
alias t1680='cdSWMF;make test16 -j NP=8;BT0'
alias cloneAMREX='git clone https://github.com/AMReX-Codes/amrex.git'
alias gitcloneSWMF='git clone git@github.com:SWMFsoftware/SWMF.git'
alias keygen='ssh-keygen;cat ~/.ssh/id_rsa.pub'
alias makerun='cd ~/SWMF;make -j;cd run_test;mpiexec -n 4 SWMF.exe|& tee runlog'
alias makej='cd ~/SWMF;make -j'
alias run='cd ~/SWMF/run_test;mpiexec -n 4 SWMF.exe|& tee runlog'
alias BT0='~/SWMF/util/AMREX/Tools/Backtrace/parse_bt.py ~/SWMF/run/SWMF.exe ~/SWMF/run/Backtrace.0>~/SWMF/run/Backtracetmp;rm -rf ~/SWMF/run/Backtrace.0;mv ~/SWMF/run/Backtracetmp ~/SWMF/run/Backtrace.0;code ~/SWMF/run/Backtrace.0'
alias t68='cdSWMF;make test16 -j;make test18 -j'
alias t688='cdSWMF;make test18 -j NP=8; code ~/SWMF/test18_gmpc.diff;make test16 -j NP=8; code ~/SWMF/test16_gmpc.diff'
alias 3D='cd ~/SWMF;./Config.pl -o=GM:g=8,8,8'
alias 2D='cd ~/SWMF;./Config.pl -o=GM:g=8,8,1'

alias idl='fawlty'
alias fixdpkg='sudo dpkg --configure -a'
alias cleanrun='cd ~/SWMF/run;rm -rf WriteMF*;cp ~/SWMF/run/PARAM.in ~/SWMF;cd ~/SWMF;rm -rf run;make rundir;cp ~/SWMF/PARAM.in ~/SWMF/run;'
alias makerun='cd ~/SWMF;make rundir'
# rm -rf ~/.bash_aliases ;ln -s /mnt/g/'My Drive'/FLEKS/.bash_aliases ~/.bash_aliases
