# How to Install

1. Get the latest version of Neovim (Not from ubuntu) and place it in the folder /opt/nvim/nvim(executable).
2. Make sure that NeoVim is in the shell path. Add this line to your ~/.bashrc 
```bash
export PATH="$PATH:/opt/nvim/"
export EDITOR='/opt/nvim/nvim'
```
3. If you are going to use the Tmux plugin, add this part to your ~/.tmux.conf file
```
# Smart pane switching with awareness of Vim splits.
# See: https://github.com/christoomey/vim-tmux-navigator
is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
    | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|l?n?vim?x?|fzf)(diff)?$'"
bind-key -n 'C-h' if-shell "$is_vim" 'send-keys C-h'  'select-pane -L'
bind-key -n 'C-j' if-shell "$is_vim" 'send-keys C-j'  'select-pane -D'
bind-key -n 'C-k' if-shell "$is_vim" 'send-keys C-k'  'select-pane -U'
bind-key -n 'C-l' if-shell "$is_vim" 'send-keys C-l'  'select-pane -R'
tmux_version='$(tmux -V | sed -En "s/^tmux ([0-9]+(.[0-9]+)?).*/\1/p")'
if-shell -b '[ "$(echo "$tmux_version < 3.0" | bc)" = 1 ]' \
    "bind-key -n 'C-\\' if-shell \"$is_vim\" 'send-keys C-\\'  'select-pane -l'"
if-shell -b '[ "$(echo "$tmux_version >= 3.0" | bc)" = 1 ]' \
    "bind-key -n 'C-\\' if-shell \"$is_vim\" 'send-keys C-\\\\'  'select-pane -l'"

bind-key -T copy-mode-vi 'C-h' select-pane -L
bind-key -T copy-mode-vi 'C-j' select-pane -D
bind-key -T copy-mode-vi 'C-k' select-pane -U
bind-key -T copy-mode-vi 'C-l' select-pane -R
bind-key -T copy-mode-vi 'C-\' select-pane -l
```
4. Source your ~/.bashrc file using
```bash
source ~/.bashrc
```
5. Create a directory in your home called ~/.config/
6. Clone this repo into ~/.config/ and rename the folder to nvim. Now the path should look like ~/.config/nvim/
7. Now just launch NeoVim and Lazy should install everything
8. Type ":checkhealth" once NeoVim launches and follow everything that it says to do
9. (OPTIONAL) Install a Nerd font so that you can get the fancy icons in your editor    
    
Enjoy!

