# General
alias ll='ls -la'

config_git_key() {
  git config core.sshCommand "ssh -i $1 -o IdentitiesOnly=yes"
}

# Rust
alias rustrun='rust-script'
alias rustruntest='rust-script --test'

# python
alias python="python3"

# Devops

# kubectl
alias k="kubectl"
alias k_change_context="kubectl config use-context"
alias ka="kubectl apply -f"
alias kd="kubectl delete -f"
alias kds="kubectl describe"
alias kdsp="kubectl describe pod/$1"

# flutter
alias f="fvm flutter"
alias flutter="fvm flutter"
alias d="fvm dart"
alias dart="fvm dart"