if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi 

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH=$PATH:"/Users/udonmai/Library/Application Support/GoodSync"
export PATH=$PATH:"/usr/local/bin/node:/usr/local/bin/npm:/usr/local/share/npm/bin"
