# disk usage (from df command)
alias diskusage="df -h --type=vfat --type=ext4 --type=fuseblk --output=source,fstype,size,used,avail,pcent,target"

# disks partitions stats
alias partitions="lsblk -f -o +SIZE"

# usage of the files in the current directory
alias lsdu="du -sch .[!.]* * | sort -h"

# connect to brandie dev database
alias psqldev='psql -U backend -h dev.brandie.io -W -p 5432 -d brandie'

# start and stop postgres server
export PGLOGFILE=/var/log/postgresql/logfile
alias pgstart="pg_ctl start -l $PGLOGFILE"
alias pgstop="pg_ctl stop"

# brandie tmux
alias brandie="tmux new -s brandie"

# dotfiles git
alias dtf='/usr/bin/git --work-tree $HOME --git-dir $HOME/.dtf/'

