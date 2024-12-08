# How to Install

1. Get the latest version of Neovim (Not from ubuntu) and place it in the folder /opt/nvim/nvim(executable).
2. Make sure that NeoVim is in the shell path. Add this line to your ~/.bashrc 
```bash
export PATH="$PATH:/opt/nvim/"
export EDITOR='/opt/nvim/nvim'
```
3. Source your ~/.bashrc file using
```bash
source ~/.bashrc
```
4. Create a directory in your home called ~/.config/
5. Clone this repo into ~/.config/ and rename the folder to nvim. Now the path should look like ~/.config/nvim/
6. Now just launch NeoVim and Lazy should install everything
7. Type ":checkhealth" once NeoVim launches and follow everything that it says to do
8. (OPTIONAL) Install a Nerd font so that you can get the fancy icons in your editor  
Enjoy!

