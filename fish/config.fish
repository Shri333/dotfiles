# adapted from "https://github.com/craftzdog/dotfiles-public/blob/master/.config/fish/config.fish"
set fish_greeting ""
set -gx EDITOR nvim

# theme
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# taken from "https://github.com/folke/tokyonight.nvim/blob/main/extras/fish_tokyonight_night.fish"
# TokyoNight Color Palette
set -l foreground c0caf5
set -l selection 33467C
set -l comment 565f89
set -l red f7768e
set -l orange ff9e64
set -l yellow e0af68
set -l green 9ece6a
set -l purple 9d7cd8
set -l cyan 7dcfff
set -l pink bb9af7

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment
   
# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment

# aliases
alias ls "exa -a"
alias ll "ls -l --git --no-permissions --no-user --no-time"
alias g git
alias v nvim

# Homebrew
set -gx HOMEBREW_PREFIX "/opt/homebrew"
set -gx HOMEBREW_CELLAR "/opt/homebrew/Cellar"
set -gx HOMEBREW_REPOSITORY "/opt/homebrew"
set -gx PATH "/opt/homebrew/bin" "/opt/homebrew/sbin" $PATH
set -gx MANPATH "/opt/homebrew/share/man" $MANPATH
set -gx INFOPATH "/opt/homebrew/share/info" $INFOPATH

# NVM
nvm use default --silent

# Rust
set -gx PATH $HOME/.cargo/bin $PATH

# Go
# set -g GOPATH $HOME/go
# set -gx PATH $GOPATH/bin $PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
status is-interactive && eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source && conda deactivate && conda activate 3.10
# <<< conda initialize <<<
