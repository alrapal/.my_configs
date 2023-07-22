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

