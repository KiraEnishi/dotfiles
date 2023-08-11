Run command to set GitHub Username environment variable
```
export GITHUB_USERNAME=KiraEnishi
```

Install [homebrew](https://brew.sh/)
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install chezmoi and pulldown
```
brew install chezmoi

chezmoi init --apply https://github.com/$GITHUB_USERNAME/dotfiles.git
```

Install [powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)

Configure [git](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)