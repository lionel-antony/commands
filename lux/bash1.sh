# hostname details 
hostnamectl

# clear screen 
ctrl + l

# search for zsh
sudo apt ^zsh$
sudo apt show zsh
sudo apt install zsh

# zsh commands
zsh-newuser-install 

# Variables - local, env, command and variable Scope

# Local - A local variable is local to the Shell. They are available to the Shell but not by commands launched from it.
EDITOR=vim 

# Variables can be set as env var by using the export command.
export EDITOR=vim

# Command Var - a var that only needs to be effective for the single instance of a command execution. The var does not persist after the command execution. 
EDITOR=vim crontab -e

sudo apt install vim

# set Editor 
export EDITOR=vim
set |   grep EDITOR

# display env var
env
env | grep EDITOR

# unset EDITOR
unset EDITOR


# previous cmd
!!

# Printing Var
set - list variable
env - list env var


# Declare Command
declare -p MYVAR MYENV

# Converting Case
The declare command is used to set var and using -u or -l can control the case of the set value
