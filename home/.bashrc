HISTSIZE=-1
HISTFILESIZE=-1

#Set Custom prompt
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\] \w \[\033[00m\]\$ '

xhost +local:root > /dev/null 2>&1

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize
shopt -s expand_aliases
shopt -s histappend
stty -ixon #Disable ctr;-s ctrl-q
shopt -s autocd #Allows you to cd just be typing the directory name

source $XDG_CONFIG_HOME/bash/aliases
source $XDG_CONFIG_HOME/bash/functions



# added by travis gem
[ ! -s /home/neil/.travis/travis.sh ] || source /home/neil/.travis/travis.sh


export HADOOP_HOME=/srv/hadoop-3.2.1
export HADOOP_STREAMING=$HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-3.2.1.jar
export PATH=$PATH:$HADOOP_HOME/bin
# Set the JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/java-14-openjdk
# Helpful aliases
alias ..="cd .."
alias ...="cd ../.."
alias hfs="hadoop fs"
alias hls="hfs -ls"
condai(){
        # >>> conda initialize >>>
        # !! Contents within this block are managed by 'conda init' !!
        __conda_setup="$('/home/neil/.config/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
        if [ $? -eq 0 ]; then
            eval "$__conda_setup"
        else
            if [ -f "/home/neil/.config/anaconda3/etc/profile.d/conda.sh" ]; then
				"/home/neil/.config/anaconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
            else
				export PATH="/home/neil/.config/anaconda3/bin:$PATH"  # commented out by conda initialize
            fi
        fi
        unset __conda_setup
        # <<< conda initialize <<<
}

#condai
#conda activate psl
#cd ~/projects/psl/federated-learning-lib
