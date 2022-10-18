# Install oh-my-posh


Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck

# run "notepad $PROFILE" and add these lines to the end:
Import-Module posh-git
Import-Module oh-my-posh
#Set-Prompt
Set-Theme Paradox

# font face 
# "fontFace":  "Cascadia Code PL"

