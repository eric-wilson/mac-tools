#!/usr/bin/env bash
# mac_tools_install.sh

###################################################################################################
# install homebrew (w/o a prompt or needed to hit return)
URL_BREW='https://raw.githubusercontent.com/Homebrew/install/master/install'
echo -n '- Installing homebrew ... '
echo | /usr/bin/ruby -e "$(curl -fsSL $URL_BREW)" > /dev/null
if [ $? -eq 0 ]; then echo 'OK'; else echo 'NG'; fi

# manual way
## /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add brew to the path 
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"


###################################################################################################
# install visual studio cod

brew install --cask visual-studio-code

# set up code in the shelll
cat << EOF >> ~/.zprofile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF


###################################################################################################
# browsers
brew install --cask google-chrome
brew install --cask firefox
###################################################################################################


###################################################################################################
# productivity
brew install --cask microsoft-office  # requires password to be entered
brew install --cask joplin
brew install --cask spectacle
brew install --cask iterm2
###################################################################################################



###################################################################################################
# other dev tools

brew install --cask pycharm
brew install --cask datagrip
brew install --cask visual-studio. # requires password to be entered

# only install one or the other
# -- docker service
# brew install docker
# -- docker desktop
brew install --cask docker

brew install --cask gitkraken
brew install awscli
brew tap aws/tap
brew install aws-sam-cli
brew install aws-cdk

###################################################################################################



###################################################################################################
# manual installs (if you need betas)
open -a 'google chrome' https://visualstudio.microsoft.com/vs/mac/preview/

###################################################################################################

