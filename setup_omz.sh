#!/bin/sh
sudo apt install zsh
chsh -s /bin/zsh
sudo rm -r ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
rm ~/.zshrc*
echo "creating .zshrc symlink"
ln -s $(dirname "$(realpath $0)")/.zshrc ~/.zshrc
echo "done"
zsh
