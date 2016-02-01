#!/bin/sh
 set -eo pipefail


 {
 echo 'HISTFILESIZE=5000' 
 echo ""
 } >>  ~/.bashrc


 chgrp -Rv Users ~/.ssh/* 
 chmod -vR 600 ~/.ssh/id_rsa
 git config --global user.email "marvin.froeder@vizexplorer.com"
 git config --global user.name "Marvin Froeder"
 git config --global push.default matching
 git config --global core.filemode false


 docker-machine create -d "virtualbox" dm
 eval "$(docker-machine env dm)"


 git clone git@github.com:velo/takari-ide.git ~/takari-ide
 cd ~/takari-ide
 gem install mustache
 ./product.rb
 mkdir -p /cygdrive/c/tools/eclipse
 cp -r io.tesla.ide.product/target/products/io.tesla.ide.product/win32/win32/x86_64/* /cygdrive/c/tools/eclipse
 powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/velo/.files/master/eclipse.ps1'))"


npm install -g gulp
npm install -g karma
npm install -g http-server


wget https://bootstrap.pypa.io/ez_setup.py -O - | python
easy_install pip
pip install git-up
rm setuptools-19.6.zip


{
echo '# ctrl + arrows on bash';
echo '"\e[1;5C": forward-word   # ctrl + right';
echo '"\e[1;5D": backward-word  # ctrl + left ';
echo '';
} >> ~/.inputrc


wget https://fpdownload.macromedia.com/pub/flashplayer/updaters/20/flashplayer_20_sa_debug.exe -O /usr/bin/flashplayer.exe
chmod +x /usr/bin/flashplayer.exe


curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
{
echo "# git branch on bash";
echo "source ~/.git-prompt.sh";
echo 'export PS1='"'"'\n\[\e]0;\w\a\]\[\e[32m\]\u@\h \[\e[33m\]\w \e[36m$(__git_ps1)\e[m\n$ '"'"'';
echo "";
} >>  ~/.bashrc


git clone https://github.com/caarlos0/jvm.git ~/.jvm
{
echo "source ~/.jvm/jvm.sh";
echo "";
} >>  ~/.bashrc


{
echo '7=C:\Program Files\Java\jdk1.7.0_79\';
echo '8=C:\Program Files\java\jdk1.8.0_72\';
echo "";
} >>  ~/.jvmconfig


{
echo "alias open=cygstart"
echo ""
} >>  ~/.bashrc


echo "export PROMPT_COMMAND='history -a; history -r'" >> ~/.bashrc
