test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.config/zsh/.zshrc && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.config/zsh/.zshrc
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.config/zsh/.zshrc
