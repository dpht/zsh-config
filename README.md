# About
My personal oh-my-zsh configuration.

# Quick Start

### Step-1: Install Zsh

`brew install zsh`

### Step-2: Install Oh My Zsh

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

Check the installation verion:

`zsh --version`


### Step-3: Copy my configuration .zshrc

After that to update the change:

`source ~/.zhrc`


### Step-4: Custom Theme/Icon

To install theme that i used first you need to install [powerlevel9k](https://github.com/bhilburn/powerlevel9k/wiki/Install-Instructions#option-2-install-for-oh-my-zsh).

Then, select this theme in your `~/.zshrc`

`ZSH_THEME="powerlevel9k/powerlevel9k"`

But I'm using [Oxide](https://github.com/dikiaap/dotfiles/blob/master/.oh-my-zsh/themes/oxide.zsh-theme) theme.

Update your changes by running the command `source ~/.zshrc`


### Step 5: Install Fonts

`git clone https://github.com/powerline/fonts.git`

`cd fonts && ./install.sh`

To change the font, navigate to `iTerm2 > Preferences > Profiles > Text > Change Font`.