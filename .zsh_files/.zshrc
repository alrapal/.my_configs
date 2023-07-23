# <--- Configuration for Git in prompt ---->
# based on https://salferrarello.com/zsh-git-status-prompt/

# Enables zsh functions and version control information function 
autoload -Uz add-zsh-hook vcs_info
# Enables the use of env var in the prompt
setopt prompt_subst
# Retrieve vcs info using precmd function
add-zsh-hook precmd vcs_info # -> this stores the result of the function in a variables vcs_info_msg_0_
# Customise prompt message with username + working dir (and some formating) and gathered vcs_info
PROMPT='%F{113}%n %F{210}%1~%f %F{227}${vcs_info_msg_0_}%f > '
RPROMPT='%F{227}%B%D{%A %d-%m-%Y}   %F{215}%T%b%f'

# Enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
# Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
# Set the format of the Git information for vcs_info
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)

# %x -> name of the script running
# :- -> default value in case not provided
# (%) -> treats % as a flag
# realpath -> utils from coreutils giving the real path of the given element
# dirname -> retrieve the parent directory of the given path
# In short, we retrieve the real path of the current script and save it's parent directory into the DIR variable.
# This is to be able to use the following sources through a simlink (otherwise file not found)
DIR=$(dirname $(realpath "${(%):-%x}"))

source "$DIR/.zsh_alias"
source "$DIR/.path"

