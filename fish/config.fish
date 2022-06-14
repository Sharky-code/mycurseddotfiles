if status is-interactive
    # Commands to run in interactive sessions can go here
end
if status --is-login
  source (brew --prefix)"/opt/bash-git-prompt/share/gitprompt.fish"
end
alias ls="exa"
alias vi="nvim"
alias pi="pip3"
alias py="python3"
