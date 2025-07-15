all: 
	echo 'this is a bash script, you either `make install` or `make uninstall` it'
install:
	if [ ! -d "${HOME}/.config/" ]; then echo ".config dir not found, creating"; mkdir ${HOME}/.config; fi
	chmod a+x ./blobcatd
	cp './blobcatd' '/data/data/com.termux/files/usr/bin/blobcatd'
	cp -R "./config/blobcatd" "${HOME}/.config/blobcatd"
	echo "you can edit ${HOME}/.config/systemd/user/blobcatd.service if you want to change the settings of the daemon"
	echo 'you cannot use systemd to start the daemon, this is termux, no such thing exists'
uninstall:
	rm '/data/data/com.termux/files/usr/bin/blobcatd'
	rm -rf "${HOME}/.config/blobcatd"
