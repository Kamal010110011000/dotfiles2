mv ~/.config/nvim ~/.config/nvim.backup

cp -Rv nvim ~/.config/

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

nvim +PackerSync

sudo npm install -g bash-language-server pyright vscode-langservers-extracted typescript typescript-language-server

