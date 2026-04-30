if status is-interactive
  set -g fish_greeting (set_color --italics magenta)"こり様、おかえり～ 今日は "(date +"%H:%M:%S")(set_color normal)
end

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
