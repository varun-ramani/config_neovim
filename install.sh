echo "Installing Varun's Neovim Configuration to ~/.config/nvim"
git clone git@github.com:varun-ramani/config_neovim_lsp ~/.config/nvim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall +qa
