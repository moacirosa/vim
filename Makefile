# Installs extensions and compiles things that need compiling.
# https://github.com/markstory/vim-files/blob/master/Makefile
# http://ubuntuforums.org/showthread.php?t=275202
#
#

START="$(shell pwd)"

help:
	@echo "install - install + compile native things."
	@echo "update  - Download update for all plugins."

install: symlink submodules commandt fonts bye

symlink:
	ln -sf "$(shell readlink -f "src/vimrc")" ~/.vimrc
	ln -sf "$(shell readlink -f "src/gvimrc")" ~/.gvimrc
	ln -sf "$(shell readlink -f "src/vim")" ~/.vim

submodules:
	git submodule init
	git submodule update

commandt:
	cd src/vim/bundle/Command-T/ruby/command-t/;\
		/usr/bin/ruby extconf.rb;\
		make clean && make

fonts:
	current="$(shell pwd)"
	mkdir -p /usr/share/fonts/truetype/font-install
	cp bin/Monaco.ttf /usr/share/fonts/truetype/font-install/Monaco.ttf
	fc-cache -fv
	cd "$(START)"

update:
	git submodule foreach git pull origin master
	
bye:
	@echo "Congratulations! You did!"
