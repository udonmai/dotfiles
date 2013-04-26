if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi 

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH="$PATH:/usr/local/bin/node:/usr/local/bin/npm:/usr/local/share/npm/bin"
