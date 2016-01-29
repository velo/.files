iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))


choco feature enable -n allowGlobalConfirmation

choco install chocolatey
choco install beyondcompare
choco install googlechrome
choco install nodejs.install
choco install firefox
choco install flashplayeractivex
choco install flashplayerplugin
choco install notepadplusplus.install
choco install 7zip.install
choco install javaruntime
choco install skype

choco install jdk8
choco install jdk7
New-Item -Path HKLM:Software\JavaSoft -Name Prefs -Force

choco install maven
choco install adobeair
choco install telegram.install
choco install adobe-creative-cloud
choco install pushbullet
choco install openoffice

choco install webexff
choco install webexnetworkplayer

choco install mpc-hc
choco install steam

choco install virtualbox
choco install virtualbox.extensionpack
choco install docker
choco install docker-machine

choco install postgresql-9.3
choco install pgadmin3

choco install turbo

choco install cygwin
[Environment]::SetEnvironmentVariable("PATH", $env:Path + ";c:\cygwin" )

C:\ProgramData\chocolatey\lib\Cygwin\tools\cygwin\cygwinsetup.exe -s http://ucmirror.canterbury.ac.nz/cygwin/  --quiet-mode --packages git --packages wget --packages git-completion --packages ruby --packages python --packages rubygems --packages unzip --packages dos2unix --packages curl

choco feature disable -n allowGlobalConfirmation
