# How to Install

1. Get the latest version of Neovim (Not from ubuntu) and place it in the folder /opt/nvim/nvim(executable).
2. Make sure that NeoVim is in the shell path. Add this line to your ~/.bashrc 
```bash
export PATH="$PATH:/opt/nvim/"
export EDITOR='/opt/nvim/nvim'
```
3. If you are going to use the Tmux plugin, add this part to your ~/.tmux.conf file
```tmux
set -g mouse on
set-option -g default-shell /usr/bin/fish

set -g history-limit 102400
set -g default-terminal "screen-256color"
set-option -ga terminal-overrides ",xterm-256color:Tc"
set -g window-size latest
setw -g aggressive-resize on
set -g base-index 1
setw -g pane-base-index 1
set -g renumber-windows on

# Use emacs keybindings in the status line
set-option -g status-keys emacs

# Use vim keybindings in copy mode
setw -g mode-keys vi

# Fix ESC delay in vim
set -g escape-time 10

unbind C-b
set -g prefix C-w

bind C-w send-prefix

bind a resize-window -A

unbind-key -T copy-mode-vi v

bind-key -T copy-mode-vi v \
  send-keys -X begin-selection

bind-key -T copy-mode-vi 'C-v' \
  send-keys -X rectangle-toggle

bind-key -T copy-mode-vi y \
  send-keys -X copy-pipe-and-cancel "pbcopy"

bind-key -T copy-mode-vi MouseDragEnd1Pane \
  send-keys -X copy-pipe-and-cancel "pbcopy"

bind r source-file ~/.tmux.conf \; display "Config reloaded!"

bind c new-window -c '#{pane_current_path}'

bind '\' split-window -h -c '#{pane_current_path}'
bind - split-window -v -c '#{pane_current_path}'

bind b break-pane -d

is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
    | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
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

set-option -g status-justify left
set-option -g status-left '#[bg=colour72] #[bg=colour237] #[bg=colour236] #[bg=colour235]#[fg=colour185] #S #[bg=colour236] '
set-option -g status-left-length 16
set-option -g status-bg colour237
set-option -g status-right '#[bg=colour236] #[bg=colour235]#[fg=colour185] %a %R #[bg=colour236]#[fg=colour3] #[bg=colour237] #[bg=colour72] #[]'
set-option -g status-interval 60

set-option -g pane-active-border-style fg=colour246
set-option -g pane-border-style fg=colour238

set-window-option -g window-status-format '#[bg=colour238]#[fg=colour107] #I #[bg=colour239]#[fg=colour110] #[bg=colour240]#W#[bg=colour239]#[fg=colour195]#F#[bg=colour238] '
set-window-option -g window-status-current-format '#[bg=colour236]#[fg=colour215] #I #[bg=colour235]#[fg=colour167] #[bg=colour234]#W#[bg=colour235]#[fg=colour195]#F#[bg=colour236] '
```
4. Then source your ~/.tmux.conf file using
```bash
tmux source ~/.tmux.conf
```
5. Source your ~/.bashrc file using
```bash
source ~/.bashrc
```
6. You also need to install fzf, fdfind, and rg using whatever os package manager you are using, since this config uses fzf-lua
7. Create a directory in your home called ~/.config/
8. Clone this repo into ~/.config/ and rename the folder to nvim. Now the path should look like ~/.config/nvim/
9. Now just launch NeoVim and Lazy should install everything
10. Type ":checkhealth" once NeoVim launches and follow everything that it says to do
11. (OPTIONAL) Install a Nerd font so that you can get the fancy icons in your editor    
    
Enjoy!

# IdeaVim Config
```vim
" .ideavimrc is a configuration file for IdeaVim plugin. It uses
"   the same commands as the original .vimrc configuration.
" You can find a list of commands here: https://jb.gg/h38q75
" Find more examples here: https://jb.gg/share-ideavimrc


"" -- Suggested options --
" Show a few lines of context around the cursor. Note that this makes the
" text scroll if you mouse-click near the start or end of the window.

set clipboard+=unnamed

let mapleader = " "

set number
set relativenumber

set scrolloff=5
set visualbell

set ignorecase
set smartcase
set hlsearch
set incsearch

" Do incremental searching.
set incsearch

" Don't use Ex mode, use Q for formatting.
map Q gq

inoremap jj <ESC>

nnoremap <CR> o<Esc>
nnoremap <S-CR> O<Esc>


" Using this link for actions https://gist.github.com/zchee/9c78f91cc5ad771c1f5d
map N <Action>(NextTab)
vmap K <Action>(MoveLineUp)
vmap J <Action>(MoveLineDown)
map H <Action>(EditorUnindentSelection)
map L <Action>(EditorIndentSelection)
map <leader>pf <Action>(GotoFile)
map <leader>pr <Action>(FindUsages)
map <leader>ps <Action>(GotoText)
map <leader>c <Action>(CommentByLineComment)
map <leader>gs <Action>(VcsGroup)
map <c-h> <Action>(GoToTab1)
map <c-j> <Action>(GoToTab2)
map <c-k> <Action>(GoToTab3)
map <c-l> <Action>(GoToTab4)
map <c-t> <Action>(CloseContent)
map <c-;> <Action>(NextTab)
map <c-g> <Action>(PreviousTab)
" TODO: Add a command to close terminal
map <leader>s <Action>(RefactoringMenu)
map <leader>f <Action>(ReformatCode)
map <leader>r <Action>(Run)
map zc <Action>(CollapseRegion)
map zo <Action>(ExpandRegion)
map zR <Action>(ExpandAllRegions)
map zM <Action>(CollapseAllRegions)
map <leader>d <Action>(ShowErrorDescription)
map <leader>gs <Action>(ActivateCommitToolWindow)
imap <c-m> <Action>(CodeCompletion)

nnoremap <leader>h :noh<CR>

Plug 'preservim/nerdtree'
nnoremap <leader>pv :NERDTree<CR>
nnoremap <leader>pc :NERDTreeClose<CR>

```


