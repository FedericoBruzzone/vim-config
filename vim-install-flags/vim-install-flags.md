./configure --with-features=huge \
--enable-luainterp=yes \
--enable-mzschemeinterp \
--enable-perlinterp=yes \
--enable-pythoninterp=yes \
--enable-python3interp=yes \
--enable-tclinterp=yes \
--enable-rubyinterp=yes \
--enable-cscope \
--enable-multibyte \
--enable-fontset \
--with-x \
--enable-gui=auto \
--enable-gtk2-check \
--enable-gnome-check \

make 

sudo make install
