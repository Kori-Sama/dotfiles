set -gx EDITOR nvim

set -x SSH_AUTH_SOCK ( 
    if test -e "$HOME/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock"
        echo "$HOME/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock"
    else if test -e "$HOME/.bitwarden-ssh-agent.sock"
        echo "$HOME/.bitwarden-ssh-agent.sock"
    else
        echo ""
    end
)
