#install vim config files
SOURCE=vim-config.tar.gz
TMP_DIR=/tmp/vim-config

function msg () {
   echo \* $1
}

msg 'Create temp directory'
mkdir -p ${TMP_DIR} && cd ${TMP_DIR}

(
	cd ${TMP_DIR}
	msg 'Download vim-config sources'
	curl -sL -o ${SOURCE} http://github.com/hayzer/vim-config/tarball/master

	msg 'Open source'
	tar zxf ${SOURCE}

	msg 'Enter archive'
	cd hayzer-*/

	cp .vimrc ${HOME}/.vimrc
	msg 'Copy .vimrc'

	msg 'Copy .vim directory'
	cp -r .vim/* ${HOME}/.vim/

	msg 'Create undo dir'
	mkdir -p ${HOME}/.vim/undodir

)

msg 'Remove temp directory'
rm -fr ${TMP_DIR}

echo
echo ************************************
echo # > open vim
echo # > :PlugInstall
echo ************************************
echo

exit 0
