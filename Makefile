# Installs extensions and compiles things that need compiling.
# https://github.com/markstory/vim-files/blob/master/Makefile
# http://ubuntuforums.org/showthread.php?t=275202
#
#

START="$(shell pwd)"

help:
	@echo "install - install + compile native things."
	@echo "update  - Download update for all plugins."

install: symlink submodules commandt bye

symlink:
	ln -sf "$(shell bin/pathget "src/vimrc")" ~/.vimrc
	ln -sf "$(shell bin/pathget "src/gvimrc")" ~/.gvimrc
	ln -sf "$(shell bin/pathget "src/vim")" ~/.vim

submodules:
	git submodule init
	git submodule update

commandt:
	cd src/vim/bundle/Command-T/ruby/command-t/;\
		/usr/bin/ruby extconf.rb;\
		make clean && make

update:
	git submodule foreach git pull origin master
	
bye:
	@echo "Congratulations! You did!"
