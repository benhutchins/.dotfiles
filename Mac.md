# Mac Setup

This is my guide to setup a fresh Mac install, from scratch.

## Steps

### Setup Github Access (Optional)

  Visit https://github.com/settings/tokens/new?scopes=&description=Homebrew and generate a new access token. While this is optional, you'll likely hit some API limits without it.

  ```bash
  export HOMEBREW_GITHUB_API_TOKEN="access_token"
  ```

### Install Brew

  See http://brew.sh/

  ```bash
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```

### Install App Things

  ```bash
  # common apps
  brew cask install iterm2
  brew cask install choosy
  brew cask install firefox
  brew cask install google-chrome
  brew cask install the-unarchiver

  # IDEs and development toolings
  brew cask install visual-studio-code
  brew cask install sublime-merge
  brew cask install postman
  brew cask install sqlectron

  # communication
  brew cask install slack
  brew cask install telegram
  # brew cask install skype
  # brew cask install discord

  # productivity apps
  brew cask install alfred
  brew cask install bettertouchtool
  brew cask install libreoffice # install if you don't have Microsoft Office for Mac
  brew cask install microsoft-office # install if you have Microsoft Office for Mac

  # security and privacy
  brew cask install 1password
  brew cask install authy
  # brew cask install keybase
  # antivirus of some kind, e.g. https://home.sophos.com/

  # networking
  brew cask install anydesk
  brew cask install viscosity
  brew cask install deluge

  # entertainment & games
  brew cask install vlc
  brew cask install steam
  brew cask install openemu
  ```

### Install Development Things

  ```bash
  brew install git
  brew install vim # updates vim to latest
  brew install node
  brew install nvm
  brew install go
  brew install ruby
  brew install wget
  brew install awscli
  brew install gpg
  ```

### Setup Git

  ```bash
  cd ~
  git clone git@github.com:benhutchins/.dotfiles.git
  git config --global user.email "ben@hutchins.co"
  git config --global user.name "Benjamin Hutchins"
  ```

### Setup Docker

  ```bash
  brew cask install docker
  open /Applications/Docker.app
  ```

### Setup Fish Shell

  ```bash
  brew install fish
  curl -L http://get.oh-my.fish | fish
  brew install direnv
  ln -s ~/.dotfiles/envrc.sh ~/.envrc
  ln -s ~/.dotfiles/configs/fish/config.fish ~/.config/fish/conf.d/dotfiles.fish
  ```

### Setup Ruby Version Manager (rvm)

  ```bash
  xcode-select --install
  curl -sSL https://get.rvm.io | bash -s stable
  omf install rvm
  gem install bundler
  ```

### Setup Resilio Sync

  ```bash
  mkdir ~/Sync/
  brew cask install resilio-sync
  ```

### Install Parallels

  ```bash
  brew cask install parallels
  open /Applications/Parallels\ Desktop.app/
  ```

### Prep for projects

  ```bash
  mkdir -p ~/projects/personal
  ```

### Fix Mac issues

  ```bash
  # Disable creation of .DT_STORE files on network drives
  sudo defaults write com.apple.desktopservices DSDontWriteNetworkStores true
  
  # Don't show warnings when renaming file extensions
  sudo defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
  
  # Show hidden (.) files
  sudo defaults write com.apple.finder AppleShowAllFiles -bool true
  
  # Privacy: Disable Bonjour Advertising
  sudo defaults write /Library/Preferences/com.apple.mDNSResponder.plist NoMulticastAdvertisements -bool true
  
  # Ensure Font Smoothing is disabled (it causes fonts to render blurry)
  defaults write -g AppleFontSmoothing -int 0 # this accepts 1 for light, 2 for medium, 3 for strong font smoothing; 0 is disabled
  defaults write -g CGFontRenderingFontSmoothingDisabled -bool TRUE
  ```

### Configure Keyboard

Disable Smart Quotes, because this messes things up in a lot of apps when trying to
message someone a snippet of code.

  1. Open System Preferences
  2. Keyboard (section)
  3. Text (tab)
  4. Unselect `Use smart quotes and dashes`

### Configure Finder

  1. Open Finder
  2. Open preferences (⌘+,)
  3. General Tab → New Finder windows show: (select user)
  4. Advanced Tab → [x] Show all filename extensions
  5. Advanced Tab → [x] Remove items from Trash after 30 days
  6. Advanced Tab → [x] Keep folder on top when sorting by name
  7. Sidebar Tab → [x] User's home directory
  8. Sidebar Tab → [ ] Recents

### Security & Privacy

#### Enable Firewall

  1. Open System Preferences
  2. Go to Security & Privacy
  3. Go to Firewall tab
  4. Turn On Firewall

Not sure why that was off by default.

#### Disable analytics

  1. Open System Preferences
  2. Go to Security & Privacy
  3. Go to Privacy tab
  4. Select Analytics
  5. Uncheck everything

#### Enable FileVault

  1. Open System Preferences
  2. Go to Security & Privacy
  3. Go to FileVault tab
  4. Enable FileVault

### Configure iTerm

This will sync iTerm profile, colors, and key shortcuts.

*Note*: If you are copying mine, you will want to update the Profile's working directory.

  1. Open iTerm
  2. General > Preferences
     ✓ Load preferences from a custom folder or URL
     ~/Sync/Configs/iterm
  3. Restart iTerm
  4. General > Preferences
     ✓ Save changes to folder when iTerm2 quits
