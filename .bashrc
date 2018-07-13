source /usr/share/doc/pkgfile/command-not-found.bash

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias msfconsole="msfconsole --quiet -x \"db_connect ${USER}@msf\""
alias pcq="proxychains -q"
alias sshsocks5="ssh -f -C2qTnN -D 8080"

alias urlencode="python2 -c \"import urllib, sys; print urllib.quote(sys.argv[1])\""
alias urldecode="python2 -c \"import urllib, sys; print urllib.unquote(sys.argv[1])\""

function hex2str {
	echo -e  $(echo "$1"| sed -e 's/\([a-zA-Z0-9]\{2\}\)/\\x\1/g')
}

PS1="\n\[\e[32;1m\](\[\e[37;1m\]\u\[\e[32;1m\])-(\[\e[37;1m\]jobs:\j\[\e[32;1m\])-(\[\e[37;1m\]\w\[\e[32;1m\])\n(\[\[\e[37;1m\]! \!\[\e[32;1m\])-> \[\e[0m\]"

PATH=$PATH:$HOME/bin
