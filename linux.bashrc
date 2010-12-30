## -----------------------------------------------------
## SERVER - /ETC/BASH.BASHRC (UBUNTU/DEBIAN)
## Go ahead and use this for your servers 
## - Kris Khaira (www.KedaiRuncit.org)
## -----------------------------------------------------
export HISTCONTROL=erasedups
export ACK_OPTIONS=--type-set=php=.php,.module,.inc,.install
export EDITOR=vim

## UBUNTU/DEBIAN ONLY ##
LOGS=/var/log
alias sep='echo "---"'
alias e='vi /etc/bash.bashrc'
alias r='source /etc/profile; source ~/.profile'
alias eh='vi /etc/hosts'
alias ep='vi /etc/php5/apache2/php.ini'
alias vsftpd.r="sudo /etc/init.d/vsftpd restart"
alias nx.stop='sudo /etc/init.d/nginx stop'
alias nx.start='sudo /etc/init.d/nginx start'
alias fcgi.stop='killall -9 php5-cgi'
alias fcgi.start='sudo /etc/init.d/init-fastcgi start'
alias ap.rs='sudo /etc/init.d/apache2 restart'
alias ap.rl='sudo /etc/init.d/apache2 reload'
alias ap.stop='sudo /etc/init.d/apache2 stop'
alias ap.start='sudo /etc/init.d/apache2 start'
alias ap.log='tail -f /var/log/apache2/error.log'
alias mail.log='tail -f /var/log/mail.log'

## Bash helpers ##
alias '...'='cd ../../../'
alias '..'='cd ../../'
alias h='history'
alias c='clear'
alias untar='tar zxvf'
alias flush='sudo /etc/init.d/networking restart'
alias i='sep; ifconfig; sep;'
alias archive.w='wget -k -m -r'
alias archive.c='wget -k -m -r'
alias dl='curl -C - -O'
alias dict='curl dict://dict.org/d:'
alias showpublickey='cat ~/.ssh/id_rsa.pub'
alias pastepublickey='mkdir ~/.ssh; chmod 700 ~/.ssh; cd ~/.ssh; touch authorized_keys; chmod 600 authorized_keys; vi authorized_keys'
alias ssh.ls='cd ~/.ssh/; ls -alF'
alias noexe='sudo rm -f *.exe' #Removes all *.exe files in a folder. Good for removing viruses from thumbdrives.
alias phpinfo='echo "<?php phpinfo(); ?>" | sudo tee -a info.php'
alias xx='echo; echo "-------------------------------------------------------------------"; echo'
alias 755folders="find . ./ -type d -exec chmod 755 {} \;"
alias 644files="find . ./ -type f -exec chmod 644 {} \;"
alias 777folders="find . ./ -type d -exec chmod 777 {} \;"
alias conn='netstat -nl | grep tcp4' #Active connections
alias v='vim'
alias v.='vim .'
alias sv='sudo vim'
alias ev='vim ~/.vimrc'
alias ah='alias -p | ack -C ' #alias help

##  Drupal ##
SAM=sites/all/modules
SDF=sites/default/files
alias .sam='cd $SAM'
alias d='drush'
alias di='drush pm-info'
alias dmf='o `d dd $0`' #open a module diretory in Finder
alias ddb="cat sites/default/settings.php | grep 'db_url ='"

# This is the Drupal upgrade script
# Use it like this ;
# dpupgrade downloadedpath/ destinationpath/
alias dpupgrade='echo "Press any key to CONFIRM. Press Ctrl+C to Cancel"; read; rsync -avH --exclude=_* --exclude=deploy --exclude=sites --exclude=.git* --delete'

## Git ##
alias gs='git status'
alias gp='git push -v'
alias gpo='git push -v origin' #push to origin all branches
alias gpom='git push -v origin master' #push to origin the master branch
alias ga='git add'
alias gu='git pull'
alias gu.pm='git pull projectlocker master'
alias gu.um='git pull unfuddle master'
alias gl='git log'
alias gl1='echo "#---"; git log --pretty=oneline; echo "#---";'
alias grm='git status | grep deleted | awk '\''{print $3}'\'' | xargs git rm' #git rm all deleted files
alias gc='git commit -m'
alias gi='vi .gitignore'
alias gd='git diff | mate'

alias gb='git branch'
alias gba='git branch -a'
alias gsh='git show'
alias gn='nub'
alias gco='git checkout'
alias gg='git gui'

## Subversion ##
export SVN_EDITOR=vi
alias sup='echo ""; date; svn update; echo ""'
alias sexternal='svn propedit svn:externals .'
alias sl='svn log --limit'
alias slist='svn list'
alias ss='svn status'
alias sq='svn status -q'
alias scl='svn cleanup'
alias sm='svn move'
alias sc='svn commit -m'
alias scc='svn commit'
alias sa='svn add'
alias sx='svn delete'
alias sr='svn revert'
alias si='svn propset svn:ignore'
alias si.r='svn propset -R svn:ignore'
alias svnclear='find . -name .svn -print0 | xargs -0 rm -rf' #removes all .svn files. use with caution.
alias sudosvnclear='sudo find . -name .svn -print0 | xargs -0 sudo rm -rf' #removes all .svn files. use with caution.
alias sa*='svn status | grep "^\?" | awk "{print \$2}" | xargs svn add' # adds all unadded files
alias sx*='svn status | grep "^\!" | awk "{print \$2}" | xargs svn delete' # deletes all absent files

## CVS ##
alias cup='cvs update'
alias ca='cvs add'
alias cx='cvs remove'
alias cc='cvs commit -m'
alias clu='echo ""; echo "Getting LAST UPDATED DATE"; cvs log -N | grep ^date: | sort | tail -n 1 | cut -d\; -f1'
alias clearcvs="find . -depth -name 'CVS' -exec rm -rf '{}' \; -print"

## Rails ##
alias r.dm='rake db:migrate'
alias r.dfl='rake db:fixtures:load'
alias r.s='ruby script/server'
alias rg.i='sudo gem install --include-dependencies'
