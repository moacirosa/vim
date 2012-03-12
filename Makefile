# Installs extensions and compiles things that need compiling.
# https://github.com/markstory/vim-files/blob/master/Makefile
# http://ubuntuforums.org/showthread.php?t=275202
#
#
help:
	@echo "install - install + compile native things."
	@echo "update  - Download update for all plugins."

install: symlink submodules commandt fonts

symlink:
	ln -sf ~+/src/vimrc ~/.vimrc
	ln -sf ~+/src/gvimrc ~/.gvimrc
	ln -sf ~+/src/vim ~/.vim

submodules:
	git submodule init
	git submodule update

commandt:
	cd src/bundle/Command-T/ruby/command-t/;\
		/usr/bin/ruby extconf.rb;\
		make clean && make

fonts:
	mkdir -p /usr/share/fonts/truetype/font-install
	cp ~+/bin/Monaco.ttf /usr/share/fonts/truetype/font-install/Monaco.ttf
	fc-cache -fv

update:
	git submodule foreach git pull origin master
