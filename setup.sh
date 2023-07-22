#!/usr/bin/env bash

# Global variables
xcode="xcode-select"
homebrew="brew"


# Function to check the OS
check_os() {
    if [[ "$OSTYPE" != "darwin"* ]]; then
        echo "This installation script only supports MacOS."
        exit 1
   fi
}


# Function to check if a command is installed:
check_installed(){
    local command=$1

    if command -v "$command" &> /dev/null; then
        
        echo ""$command" is already installed."
        return 0
    else
        echo ""$command" is not installed."
        return 1
    fi
}

# Function to check and install xcode command line if it is missing
install_xcode() {
    check_installed "$xcode"
    if [ $? -eq 1 ]; then

        echo "Installing $xcode..."
        "$xcode" --install
    fi
}

# Function to install homebrew
install_homebrew() {
    check_installed "$homebrew"
    if [ $? -eq 1 ]; then

        echo "Installing $homebrew command..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
}

# Function to use Homebrew to install packages
install_packages() {
    
    if test -e "Brewfile"; then
        echo "Installing Packages from the Brewfile"
        brew bundle install
    else
        echo "The Brewfile has not be found. Make sure you run the setup.sh and the Brewfile are in the same directory."
        exit 1
    fi
}

create_simlink() {
    local target=$1
    local link=$2
    local type=$3
    
    if [ -L "$target" ]; then  # if the target is a symlink, just remove it
        echo "An existing link for $target exists already. Replacing it with a new link."    
        rm "$target"
    elif test "$type" "$target"; then  # if the target exists and it's not a symlink
        echo "$target already exists. Renaming it into $target.old"
        mv "$target" "$target.old"
    fi
    
    echo "Creating simlink for $link"
    ln -s $link $target
}

# Function to create simlinks
simlink(){
    
    nvim_path="$HOME/.config/nvim"
    zshrc_path="$HOME/.zshrc"
    gitconfig_path="$HOME/.gitconfig"
    
    # Checks if the .config folder exists in the home directory and creates it otherwise
    if ! test -d "$HOME/.config/"; then
        mkdir "$HOME/.config/"
    fi
    
    # create a simlink using the above method
    create_simlink "$nvim_path" "$PWD/nvim/" "-d"
    create_simlink "$gitconfig_path" "$PWD/.gitconfig" "-e"
    create_simlink "$zshrc_path" "$PWD/.zsh_files/.zshrc" "-e"
}

# Main function
main() {
    check_os
    install_xcode
    install_homebrew
#    install_packages
    simlink
}

main
