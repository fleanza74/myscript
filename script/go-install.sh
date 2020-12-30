wget -O "$HOME/Downloads/go1.13.8.linux-amd64.tar.gz" https://dl.google.com/go/go1.13.8.linux-amd64.tar.gz
tar -C /media/data/dev/opt -xzvf $HOME/Downloads/go1.13.8.linux-amd64.tar.gz

{
	echo ''
	echo '# set PATH so it includes [/media/data/dev/opt/go/bin] private bin if it exists'
	echo 'if [ -d "/media/data/dev/opt/go/bin" ] ; then'
	echo '    PATH="/media/data/dev/opt/go/bin:$PATH"'
	echo 'fi'
} >> $HOME/.bashrc

go version
