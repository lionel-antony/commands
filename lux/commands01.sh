sudo apt update
sudo apt upgrade
sudo apt update && sudo apt upgrade
sudo apt update && sudo apt upgrade -y
sudo apt autoremove

# list processes
ps aux

# list Users
# This command print the user names of users currently logged in to the current host
users 

# displays a list of all users logged in and out
last -a

# print an entry for each user currently logged into the system
finger

# This command shows currently logged in users with time details
who -u

# Print the user name associated with the current effective user ID
whoami