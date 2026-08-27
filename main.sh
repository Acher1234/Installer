# put this file in your ZSHRC file with the following command:
# echo "export CONFIGPATH=$PWD" >> ~/.zshrc
# echo "source $PWD/main.sh" >> ~/.zshrc

source $CONFIGPATH/alias.sh

eval "$(starship init zsh)"