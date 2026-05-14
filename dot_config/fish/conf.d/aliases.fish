alias python=python3
alias vi=nvim
alias vim=nvim
alias pn=pnpm

alias ls="eza --icons"
alias ll="eza -la --icons -I .DS_Store"
alias cat="bat -pp"
alias tldr="tldr -L zh"

alias lg="lazygit"
alias zed="zeditor"

if command -q podman
    alias docker='podman'
end
