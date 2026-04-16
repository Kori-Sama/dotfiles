source ~/.config/fish/conf.d/variables.fish
source ~/.config/fish/conf.d/paths.fish
source ~/.config/fish/conf.d/aliases.fish
source ~/.config/fish/conf.d/utils.fish
source ~/.config/fish/conf.d/abbrs.fish

set -U fish_greeting (set_color --italics magenta)"こり様、おかえり～ 今日は "(date +"%H:%M:%S")(set_color normal)

if command -q fnm
  fnm env --use-on-cd | source
end

# wezterm
set -x PATH "$PATH:/Applications/WezTerm.app/Contents/MacOS"

if command -q starship
  set -x STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"
  starship init fish | source
end

# obrstack
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

if command -q zoxide
# zoxide
  zoxide init fish | source
end

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/kori/.lmstudio/bin
# End of LM Studio CLI section

