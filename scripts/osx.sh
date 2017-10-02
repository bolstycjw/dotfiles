#!/bin/bash
# OSX.sh

# -- Homebrew ------------------------------------------------------------------

if exists "brew"; then
  echo_item "Homebrew is already installed" green
else
  if get_boolean_response "Do you want to install Homebrew?"; then
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  else
    echo_item "Skipping Homebrew install" red
  fi
fi

echo ""

# -- ASDF ----------------------------------------------------------------------

if exists "asdf"; then
  echo_item "asdf is already installed" green
else
  if get_boolean_response "Do you want to install asdf?"; then
    brew install coreutils automake autoconf openssl libyaml readline libxslt libtool unixodbc
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.4.0
    ln -sf $HOME/dotfiles/asdf/asdfrc $HOME/.asdfrc
  else
    echo_item "Skipping asdf install" red
  fi
fi

# -- npm -----------------------------------------------------------------------

if exists "npm"; then
  echo_item "npm is already installed" green
else
  if get_boolean_response "Do you want to install npm?"; then
    brew install node
  else
    echo_item "Skipping npm install" red
  fi
fi

echo ""

# -- zsh -----------------------------------------------------------------------

if exists "zsh"; then
  echo_item "zsh is already installed" green
else
  if get_boolean_response "Do you want to install zsh?"; then
    brew install zsh
  else
    echo_item "Skipping zsh install" red
  fi
fi

echo ""

# -- Neovim --------------------------------------------------------------------

if exists "nvim"; then
  echo_item "Neovim is already installed" green
else
  if get_boolean_response "Do you want to install Neovim?"; then
    brew install --HEAD neovim
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  else
    echo_item "Skipping Neovim install" red
  fi
fi

# -- Karabiner -----------------------------------------------------------------

if get_boolean_response "Do you want to install Karabiner configuration files?"
then
  if [ ! -d $HOME/.config/karabiner ]; then
    mkdir -p $HOME/.config/karabiner
  fi
  cp ~/dotfiles/karabiner/karabiner.json ~/.config/karabiner/karabiner.json
  echo_item "Linked karabiner" "green"
else
  echo_item "Ignoring Karabiner configuration" red
fi
