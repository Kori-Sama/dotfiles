source ~/.config/fish/conf.d/variables.fish
source ~/.config/fish/conf.d/paths.fish
source ~/.config/fish/conf.d/aliases.fish
source ~/.config/fish/conf.d/utils.fish
source ~/.config/fish/conf.d/abbrs.fish

set -U fish_greeting (set_color --italics magenta)"こり様、おかえり～ 今日は "(date +"%H:%M:%S")(set_color normal)

# starship
starship init fish | source

# fnm
if command -q fnm
  fnm env --use-on-cd | source
end

# obrstack
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

if command -q zoxide
# zoxide
  zoxide init fish | source
end
