export PATH=/opt/local/bin:${PATH}:/Users/baijunfeng/Development/sdk/tools:/Users/baijunfeng/Development/sdk/platform-tools:/Users/baijunfeng/Development/repo:/Users/baijunfeng/Code/OpenSource/dex-method-counts
alias u="cd .."
alias grep='grep --color'
alias ll='ls -l'
alias la='ls -a'
alias ls='ls -G'
alias uu='cd ../..'
alias uuu='cd ../../../'
alias uuuu='cd ../../../../'
alias hier='/Users/baijunfeng/Development/sdk/tools/hierarchyviewer'
alias draw='/Users/baijunfeng/Development/sdk/tools/draw9patch'
alias code='cd /Users/baijunfeng/Code/BClient/'
alias adbe='adb -e'
alias adbd='adb -d'

web='/Users/baijunfeng/Code/testCode/WebGitHub'
my='/Users/baijunfeng/Code/testCode/MyApplication/app/src/main'
im='/Users/baijunfeng/Code/BClient/DouMi_IMSDK/IMKit/src/kit'
b='/Users/baijunfeng/Code/BClient/doumiB/doumi_b_android/DouMiVIP'
c='/Users/baijunfeng/Code/BClient/doumi_c_android/DouMiJianZhi'
rpo='/Users/baijunfeng/Code/BClient/doumi_rpo_android/DouMiRpo'
f='/Users/baijunfeng/Code/BClient/DoumiFramework'
m='/Users/baijunfeng/Code/BClient/martin_android2/app/src/main'
d='/Users/baijunfeng/Downloads'

alias install='adb install -r app/build/outputs/apk/app-dev-debug.apk'
alias gd='./gradlew aDD'
alias gr='./gradlew aDR'

function listfile {
 find . -type f -iname '*.'${1}'' -exec ls -l {} \;;
}
function installPkg {
 find . -type f -iname '*.apk' -exec adb install -r {} \;;
}
function vf {
 if [ ${2} ];then
 vim `find . -name ''${1}'*.'${2}''`;
 fi
 if [ -z ${2} ];then
 vim `find . -name ''${1}'*.java'`;
 fi
}
# mount the android file image
function mountAndroid { hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android; }

# unmount the android file image
function umountAndroid() { hdiutil detach /Volumes/android; }

# set the number of open files to be 1024
ulimit -S -n 1024

PS1='\u@\w\[\033[0:33m\] \$ \[\033[00m\]'
export PS1
