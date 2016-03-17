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

{
echo '[difftool]'
echo '	prompt = false'
echo '	bc3 = trustExitCode'
echo '[difftool "bc3"]'
echo '	cmd = \"c:/program files/beyond compare 4/BComp.com\" \"$(cygpath -w \"$LOCAL\")\" \"$(cygpath -w \"$REMOTE\")\" /lefttitle=\"$(cygpath -w \"$LOCAL\")\" /righttitle=\"$(cygpath -w \"$REMOTE\")\" /leftreadonly /rightreadonly'
echo '[diff]'
echo '	tool = bc3'
} >> ~/.gitconfig

git config --global merge.tool bc3
git config --global mergetool.bc3.path "c:/Program Files/Beyond Compare 4/bcomp.exe"
git config --global mergetool.keepBackup false

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
echo "alias clear='printf "'"\033c"'"'"
echo ""
} >>  ~/.bashrc


echo "export PROMPT_COMMAND='history -a; history -r'" >> ~/.bashrc

{
echo "alias open=cygstart"
echo "alias pwd='cygpath -aw .'"
echo "alias docker-machine='docker-machine.exe'"
echo "alias clear='printf "'"\033c"'"'"
echo ""
} >>  ~/.bashrc


wget https://raw.githubusercontent.com/docker/docker/master/contrib/completion/bash/docker -O ~/.docker-completion.sh
wget https://raw.githubusercontent.com/docker/machine/master/contrib/completion/bash/docker-machine.bash -O ~/.docker-machine-completion.sh
chmod +x .docker-completion.sh
chmod +x .docker-machine-completion.sh

{
echo "source ~/.docker-completion.sh"
echo "source ~/.docker-compose-completion.sh"
} >>  ~/.bashrc
