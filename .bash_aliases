alias installdependencies='sudo apt-get -y update ; sudo apt install -y make cmake g++ gcc gfortran gdb python3 python-is-python3 python3-numpy openmpi-bin libopenmpi-dev'
alias installchrome='cd ~;mkdir tmpchrome;cd tmpchrome;sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;sudo dpkg -i google-chrome-stable_current_amd64.deb;sudo apt install --fix-broken -y;sudo dpkg -i google-chrome-stable_current_amd64.deb;cd ~;rm -rf tmpchrome'
alias installnautilus='sudo apt install nautilus -y'
alias param='code ~/SWMF/run_test/PARAM.in'
alias lj='grep -l 'run' ~/SWMF/PC/FLEKS/.vscode/launch.json | xargs sed -i 's/run/run_test/g''
alias targz='tar -xf *.tar.gz'
alias paraview=' ~/Apps/ParaView/bin/paraview &!  ; disown' 
alias aptfix='sudo dpkg --configure -a'
alias aliases='git -C ~/bashaliases pull;nano ~/.bash_aliases;git -C ~/bashaliases commit -a -m "Updated .bash_aliases";git -C ~/bashaliases push;. ~/.bash_aliases'
alias gitconfig='git config --global user.email "talhaa@umich.edu";git config --global user.name "Talha Arshad"'
alias alldebug='cd ~/SWMF;./Config.pl -debug -O0;make clean;make distclean -C ~/SWMF/util/AMREX/;make clean -C ~/SWMF/PC/FLEKS/'
alias allnodebug='cd ~/SWMF;./Config.pl -nodebug -O4;make clean;make distclean -C ~/SWMF/util/AMREX/;make clean -C ~/SWMF/PC/FLEKS/'
alias clonesetSWMF='cd ~;git clone git@github.com:SWMFsoftware/SWMF.git;cd SWMF;./Config.pl -install;./Config.pl -debug -O0;make test16 -j NP=8;cp -R ~/SWMF ~/SWMFbackup;code ~/SWMF/test16.diff'
alias quicksetSWMF='cd ~/SWMFbackup;git pull;cd ~/SWMFbackup/PC/FLEKS;git pull;cd ~;rm -rf SWMF;cp -R ~/SWMFbackup ~/SWMF;cd ~/SWMF;make test16 -j NP=8;code ~/SWMF/test16.diff'
alias cdSWMF='cd ~/SWMF'
alias cdFLEKS='cd ~/SWMF/PC/FLEKS'
alias cdruntest='cd ~/SWMF/run_test'
alias cdAMREX='cd ~/SWMF/util/AMREX'
alias domain='code ~/SWMF/PC/FLEKS/src/Domain.cpp'
alias pic='code ~/SWMF/PC/FLEKS/src/Pic.cpp'
alias t16='cdSWMF;make test16 -j; code ~/SWMF/test16.diff'
alias t168='cdSWMF;make test16 -j NP=8; code ~/SWMF/test16.diff'
alias t17='cdSWMF;make test17 -j; code ~/SWMF/test17.diff'
alias t178='cdSWMF;make test17 -j NP=8; code ~/SWMF/test17.diff'
alias t18='cdSWMF;make test18 -j; code ~/SWMF/test18.diff'
alias t188='cdSWMF;make test18 -j NP=8; code ~/SWMF/test18.diff'
alias t678='cdSWMF;make test17 -j;make test18 -j;make test16 -j'
alias t6788='cdSWMF;make test17 -j NP=8; code ~/SWMF/test17.diff;make test18 -j NP=8; code ~/SWMF/test18.diff;make test16 -j NP=8; code ~/SWMF/test16.diff'
alias t160='cdSWMF;make test16 -j;BT0'
alias t1680='cdSWMF;make test16 -j NP=8;BT0'
alias cloneAMREX='git clone https://github.com/AMReX-Codes/amrex.git'
alias gitcloneSWMF='git clone git@github.com:SWMFsoftware/SWMF.git'
alias keygen='ssh-keygen;cat ~/.ssh/id_rsa.pub'
alias makerun='cd ~/SWMF;make -j;cd run_test;mpiexec -n 4 SWMF.exe|& tee runlog'
alias makej='cd ~/SWMF;make -j'
alias run='cd ~/SWMF/run_test;mpiexec -n 4 SWMF.exe|& tee runlog'
alias BT0='~/SWMF/util/AMREX/Tools/Backtrace/parse_bt.py ~/SWMF/run_test/SWMF.exe ~/SWMF/run_test/Backtrace.0>~/SWMF/run_test/Backtracetmp;rm -rf ~/SWMF/run_test/Backtrace.0;mv ~/SWMF/run_test/Backtracetmp ~/SWMF/run_test/Backtrace.0;code ~/SWMF/run_test/Backtrace.0'


alias t68='cdSWMF;make test16 -j;make test18 -j'
alias t688='cdSWMF;make test18 -j NP=8; code ~/SWMF/test18.diff;make test16 -j NP=8; code ~/SWMF/test16.diff'




# rm -rf ~/.bash_aliases ;ln -s /mnt/g/'My Drive'/FLEKS/.bash_aliases ~/.bash_aliases
