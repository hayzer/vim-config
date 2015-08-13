#!/bin/bash

home=${HOME}
source=vim-config.tar.gz
tmp_dir=/tmp/vim-config

function p () {
    echo "action: " ${*}
}

p 'create temp directory'
mkdir -p ${tmp_dir}
cd ${tmp_dir}

p 'download source'
curl -sL -o ${source} http://github.com/hayzer/vim-config/tarball/master

p 'open source'
tar zxf ${source}

p 'enter archive'
cd hayzer-*/

cp .vimrc ${HOME}/.vimrc
p 'copy .vimrc'

p 'copy .vim directory'
cp -r .vim/* ${HOME}/.vim/

cd -

p 'remove temp directory'
rm -fr /tmp/vim-config

echo
echo ************************************
echo # > open vim
echo # > :PlugInstall
echo ************************************
echo
