# Install oh-my-zsh
sh -c `curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh`

# Move vimrc and zshrc into home dir
cp .vimrc ~/
cp .zshrc ~/

# Install Vundle and associated vundle plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
# Install custom plugins
cp -r plugin/ ~/.vim/

# If on OSX, use brew to install ctags
if [ uname -eq "Darwin" ]
then
    brew install ctags
fi

# If on Linux, use apt to install ctags
# This assumes you're on a debian distro because I'm lazy
if [ uname -eq "Linux" ]
then
    sudo apt-get install ctags
fi
