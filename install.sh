cp .vimrc ~/
cp .zshrc ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
cp -r plugin/ ~/.vim/

if [ uname -eq "Darwin" ]
then
    brew install ctags
fi

# This assumes you're on a debian distro because I'm lazy
if [ uname -eq "Linux" ]
then
    sudo apt-get install ctags
fi
