# If on OSX, use brew
if [ "$(uname)" == "Darwin" ]
then
    brew install ctags
    brew install zsh
fi

# If on Linux, use apt
# This assumes you're on a debian distro because I'm lazy
if [ "$(uname)" == "Linux" ]
then
    sudo apt-get install ctags
    sudo apt-get install zsh
fi
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh); exit"

# Move vimrc and zshrc into home dir
cp .vimrc ~/
cp .zshrc ~/

# Install Vundle and associated vundle plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
# Install custom plugins
cp -r plugin/ ~/.vim/

