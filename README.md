# Configuration Repository

This is my personal configuration repository. 
I am a MacOS user so it is currently only supporting MacOS. 

It allows me to have a development environment up 
and running, as well as my main applications installed
by running a single `setup.sh` script. 
## `setup.sh`

These are the different steps the script currently supports:

|Steps|
|---|
|Install Xcode command line tools|
|Install Homebrew|
|Install Application from the Brewfile|
|Creates simlink for the different configurations|

For a list of all Applications, refer to the **Brewfile**.

## IDEs

2 IDEs are installed:

- [Neovim](/nvim/README.md) (more information on the plugins and shortcuts available following the link)
- Visual Studio Code

Plugins for VScode are as well installed. 

## Supported Programming languages
<TODO:table>

## Zsh configuration
<TODO:explanation>

## Installation

**<p style="color:red">Before installing, change the name and email in the `.gitconfig` file with your own.</p>**

Open a terminal and run the following command

```shell
git clone git@github.com:alrapal/.my_configs.git ~
cd ~/.my_configs
sh setup.sh
```

This will clone this repository in the `~` directory and process to the installation. 
