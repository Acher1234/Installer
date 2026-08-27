# starship
curl -sS https://starship.rs/install.sh | sh
cp ./starship.toml ~/.config/starship.toml

# fsh
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting ~/.fsh

# autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

# install auto complete
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.zsh/zsh-autocomplete

echo "export CONFIGPATH=$PWD" >> ~/.zshrc
echo "source $PWD/main.sh" >> ~/.zshrc

# bitwarden
brew install bitwarden