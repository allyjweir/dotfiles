
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add my custom additions to default zshrc
cat ~/additions-to-zshrc >> ~/.zshrc

# Install and configure asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
echo ". $HOME/.asdf/asdf.sh" >> ~/.zshrc
echo ". $HOME/.asdf/completions/asdf.bash" >> ~/.zshrc
