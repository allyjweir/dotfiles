echo "     ╔╗ ╔╗                        ╔╗          ╔╗     ╔╗  ╔═╗  ╔╗         "
echo "     ║║ ║║       ╔╗               ║║          ║║    ╔╝╚╗ ║╔╝  ║║         "
echo "╔══╗ ║║ ║║ ╔╗ ╔╗ ╚╝╔╗╔╗╔╗╔══╗╔╗╔═╗╚╝╔══╗    ╔═╝║╔══╗╚╗╔╝╔╝╚╗╔╗║║ ╔══╗╔══╗"
echo "╚ ╗║ ║║ ║║ ║║ ║║ ╔╗║╚╝╚╝║║╔╗║╠╣║╔╝  ║══╣    ║╔╗║║╔╗║ ║║ ╚╗╔╝╠╣║║ ║╔╗║║══╣"
echo "║╚╝╚╗║╚╗║╚╗║╚═╝║ ║║╚╗╔╗╔╝║║═╣║║║║   ╠══║    ║╚╝║║╚╝║ ║╚╗ ║║ ║║║╚╗║║═╣╠══║"
echo "╚═══╝╚═╝╚═╝╚═╗╔╝ ║║ ╚╝╚╝ ╚══╝╚╝╚╝   ╚══╝    ╚══╝╚══╝ ╚═╝ ╚╝ ╚╝╚═╝╚══╝╚══╝"
echo "           ╔═╝║ ╔╝║                                                      "
echo "           ╚══╝ ╚═╝                                                      "
echo "=========="

# Install oh-my-zsh
echo "\n=========="
echo "oh-my-zsh install"
echo "=========="
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
export ZSH="${HOME}/.oh-my-zsh"

# Add my custom additions to default zshrc
echo "\n=========="
echo "Append to existing .zshrc"
echo "=========="
cat additions-to-zshrc >> $HOME/.zshrc

# Install and configure asdf
echo "\n=========="
echo "Configure asdf"
echo "=========="
git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.10.2
echo ". $HOME/.asdf/asdf.sh" >> $HOME/.zshrc
echo ". $HOME/.asdf/completions/asdf.bash" >> $HOME/.zshrc

# Final step: Source the updated `.zshrc` file
echo "\n=========="
echo "Source the updated .zshrc"
echo "=========="
source $HOME/.zshrc
