function lscsv {
  if [[ -n "$2" ]]; then
    d="$2"
  else
    d=","
  fi
  column -s$d -t < $1 | less -#2 -N -S
}

##
# Your previous /Users/etienne/.bash_profile file was backed up as /Users/etienne/.bash_profile.macports-saved_2015-02-16_at_09:30:49
##

# MacPorts Installer addition on 2015-02-16_at_09:30:49: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

dirs() {
  builtin dirs | sed -E 's/([^ ]+)/[\1]\
/g'
}

sl() {
  echo "WARN: Drink more coffee"
  ls $@
}

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


export PATH="$HOME/.cargo/bin:$PATH"

alias simplehttp="python -m SimpleHTTPServer"

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"

# Adding Frameworks to PATH
PATH="/Library/Frameworks:${PATH}"

export PATH
