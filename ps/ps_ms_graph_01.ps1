# To login
Connect-Graph
Connect-Graph -Scopes "User.Read", "User.ReadWrite.All", "Mail.ReadWrite", "Directory.ReadWrite.All", "Chat.ReadWrite", "People.Read", "Group.Read.All", "Directory.AccessAsUser.All", "Tasks.ReadWrite", "Sites.Manage.All"

# Get User
Get-MgUser
Get-MgUserMessage -UserId lionel.antony@hotmail.com


