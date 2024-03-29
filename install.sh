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

# Copy over my zshrc
echo "\n=========="
echo "Copy my .zshrc file"
echo "=========="
cp .zshrc $HOME/.zshrc

# Install and configure asdf
echo "\n=========="
echo "Configure asdf"
echo "=========="
git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.10.2
echo ". $HOME/.asdf/asdf.sh" >> $HOME/.zshrc
echo ". $HOME/.asdf/completions/asdf.bash" >> $HOME/.zshrc
