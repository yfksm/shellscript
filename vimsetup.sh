echo "******* vim setup *********"
# 最新版のvimをinstall
git clone https://github.com/vim/vim.git
cd ./vim
make
sudo make install
cd

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if [ -e ~/.vimrc ]; then
  touch ~/.vimrc
  echo "call plug#begin()" >> ./.vimrc
  echo "call plug#end()" >> ./.vimrc
fi

echo ""
echo "******* finish!! *********"
