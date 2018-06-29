alias em='emacsclient -t'
alias rmcdir='cd ..; rmdir $OLDPWD || cd $OLDPWD'
alias ccat="source-highlight --out-format=esc -o STDOUT -i"
alias less='$PAGER'
alias q='exit'
alias gatekeeperlog='grep ssh /var/log/messages | tail'
alias sshdlog='tail -f /var/log/sshd.log'
alias irc="weechat-curses"
alias isitinstalled="pkg_info | grep -i"
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"
alias mutt='cd ~/documents && mutt'
alias data='cd /mnt/data'
alias gitdir='cd ~/gitdir'
alias sxiv='sxiv -dr'
alias mdata='ntfs-3g /dev/ada1s1 /mnt/data'
alias androidmount1='mount_msdosfs /dev/da1s1 /mnt/android1'
alias pfflush='pfctl -F all -f /etc/pf.conf'
alias pfloaded='pfctl --vvsr'
alias pfstats='pfctl -s info'
alias android2mount2='mount_msdosfs  /dev/da1  /mnt/android2'
alias pflog='ifconfig pflog0 up && tcpdump -n -e -ttt -i pflog0'
alias pr='ping -c 1 192.168.1.1 | tail -3'
alias pg='ping -c 1 google.com | tail -3'
alias open='netstat -tulpn'
alias opena='netstat -antup'
alias ethtool='ethtool eth0'
alias tcpdump='sudo tcpdump -i eth0'
alias installfont='sudo fc-cache -f -v'
alias diff='colordiff'
alias c='clear'
alias e='exit'
alias cp='cp -Rv'
alias :q!='kill -9 $$'
alias :q='exit'
alias szsh='source /home/kopri/.zshrc'
alias pstree++='~/scripts/pstree_color -pl'
alias serve='python -m SimpleHTTPServer 8080'
alias backup='cp filename{,.bak}'
alias weather='ctw --nometric USAZ0233'
alias nocomment='egrep -v "^\s*(#|$)"'
alias god='sudo'
alias smite='rm -rf'
alias ls='ls --color=auto'
alias l.='ls -d .* --color=auto'
alias l='ls -lFH'
alias la='ls -lAFh'
alias lad='ls -d .*(/)'
alias xlx='xrdb -load ~/.Xresources'
alias grep='grep --color=auto'
alias mkdir='mkdir -p'
alias cds='cd ~/scripts'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias dirsize='du -h --max-depth=1 "$@" | sort -k 1,1hr -k 2,2f'
alias creationdate='stat -F '%D' +mtime'
alias internalip='print ${${$(LC_ALL=C /bin/ifconfig eth0)[7]}:gs/addr://}'
alias freespace='clear;echo "Drive      Size  Used  Avail Use  Mounted on";df -h|grep sd|column -t|sort && df -h --total|cut -c 1-11,17-37|tail -n1'
alias magnet-to-torrent='aria2c -q --bt-metadata-only --bt-save-metadata'
alias biggest='find -type f -printf '\''%s %p\n'\'' | sort -nr | head -n 40 | gawk "{ print \$1/1000000 \" \" \$2 \" \" \$3 \" \" \$4 \" \" \$5 \" \" \$6 \" \" \$7 \" \" \$8 \" \" \$9 }"'
alias tardir='( ( D=`builtin pwd`; F=$(date +$HOME/`sed "s,[/ ],#,g" <<< ${D/${HOME}/}`#-%F.tgz); S=$SECONDS; tar --ignore-failed-read --transform "s,^${D%/*},`date +${D%/*}.%F`,S" -czPf "$"F "$D" && logger -s "Tarred $D to $F in $(($SECONDS-$S)) seconds" ) & )'
 alias zshconfig="nano ~/.zshrc" alias ohmyzsh="nano ~/.oh-my-zsh" alias 111="ssh elightcap@irv-1-1-sw01" alias 121="ssh elightcap@irv-1-2-sw01" alias 131="ssh elightcap@irv-1-3-sw01" alias 211="sshelightcap@irv-2-1-sw01" alias 221="ssh elightcap@irv-2-2-sw02" alias 311="ssh elightcao@irv-3-1-sw01" alias 321="ssh elightcap@irv-3-2-sw01" alias 322="ssh elightcap@irv-3-2-sw02" alias 323="ssh elightcap@irv-3-2-sw03" alias 411="ssh elightcap@irv-4-1-sw01" alias 511="sshelightcap@irv-5-1-sw01" alias 512="ssh elightcap@irv-5-1-sw02" alias 611="ssh elightcap@irv-6-1-sw01"
 alias 612="ssh elightcap@irv-6-1-sw02"
 alias 621="ssh elightcap@irv-6-2-sw01"
 alias 622="ssh elightcap@irv-6-2-sw02"
 alias 711="ssh elightcap@irv-7-1-sw01"
 alias 712="ssh elightcap@irv-7-1-sw02"
 alias 811="ssh elightcap@irv-8-1-sw01"
 alias 911="ssh elightcap@irv-9-1-sw01"
 alias 1011="ssh elightcap@irv-10-1-sw01"
 alias 1111="ssh elightcap@irv-11-1-sw01"
 alias 1311="ssh elightcap@irv-13-1-sw01"
 alias 1312="ssh elightcap@irv-13-1-sw02"
 alias 1321="ssh elightcap@irv-13-2-sw01"
 alias 1322="ssh elightcap@irv-13-2-sw02"
 alias 1411="ssh elightcap@irv-14-1-sw01"
 alias 2011="ssh elightcap@irv-20-1-sw01"
 alias 2111="ssh elightcap@irv-21-1-sw01"
 alias 2211="ssh elightcap@irv-22-1-sw01"
 alias 2212="ssh elightcap@irv-22-1-sw02"
# Suffix alias
alias -s jpg=sxiv
alias -s png=sxiv
alias -s gif=sxiv

#Global Aliases
alias -g SPRUNGE='| curl -F "sprunge=<-" http://sprunge.us'
alias -g Xresources=$HOME/.Xresources
alias -g xinitrc=$HOME/.xinitrc
alias -g zshrc=$HOME/.zshrc

# Get your external IP.
[ -n "$(command -v curl)" ] && alias externalip='curl ifconfig.me'

# Network discovery.
[ -n "$(command -v nmap)" ] && alias network-discover='nmap -sP "192.168.1.*"'
