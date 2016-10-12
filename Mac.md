# Mac Setup

This is my guide to setup a fresh Mac install, from scratch.

## Steps

1. Setup Github Access (Optional)

  Visit https://github.com/settings/tokens/new?scopes=&description=Homebrew and generate a new access token. While this is optional, you'll likely hit some API limits without it.

  ```bash
  export HOMEBREW_GITHUB_API_TOKEN="access_token"
  ```

2. Clone this repo

  ```bash
  git clone git@github.com:benhutchins/.dotfiles ~/.dotfiles
  # requires setup of ssh key, might as well do it now
  ```

3. Install Brew

  See https://bash.sh/

  ```bash
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```

4. Install App Things

  ```bash
  # Install apps
  brew cask install iterm2
  brew cask install google-chrome
  brew cask install google-hangouts
  brew cask install spideroakone
  brew cask install slack
  brew cask install lastpass
  brew cask install atom
  brew cask install sublime-text
  brew cask install sourcetree
  brew cask install bettertouchtool
  brew cask install skype
  brew cask install teamspeak-client
  brew cask install vlc
  brew cask install teamviewer
  ```

5. Finish installing LastPass

  ```bash
  open /usr/local/Caskroom/lastpass/latest/LastPass\ Installer.app
  ```

6. Install Development Things

  ```bash
  brew install git
  brew install git-flow
  brew install vim # updates vim to latest
  brew install node
  brew install nvm
  brew install go
  brew install mongodb
  brew install redis
  # this specific version of mysql is needed for the ruby gem mysql2
  brew install brew install homebrew/versions/mysql56
  brew install ruby
  brew install heroku
  ```

7. Setup docker

  ```bash
  brew cask install docker
  open /Applications/Docker.app
  ```

8. Setup fish

  ```bash
  brew install fish
  curl -L http://get.oh-my.fish | fish
  brew install direnv
  ln -s ~/.dotfiles/envrc.sh ~/.envrc
  ln -s ~/.dotfiles/fish.config ~/.config/fish/config.fish
  ```

9. Setup rvm

  ```bash
  xcode-select --install
  curl -sSL https://get.rvm.io | bash -s stable
  omf install rvm
  gem install bundler
  ```

10. Setup Spideroak One

  ```bash
  mkdir -p ~/Sync/Personal/
  open /Applications/SpiderOakONE.app/
  ```

11. Install Parallels

  ```bash
  brew cask install parallels-desktop
  open /Applications/Parallels\ Desktop.app/
  ```

12. Prep for projects

  ```bash
  mkdir -p ~/projects/personal
  ```