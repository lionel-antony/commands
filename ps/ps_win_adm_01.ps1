New-NetIPAddress -InterfaceAlias ethernet -IPAddress xxx.xxx.xxx.xxx -PrefixLength 24 -DefaultGateway xxx.xxx.xxx.xxx
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses xxx.xxx.xxx.xxx
Rename-Computer ABC123
Restart-Computer
Add-computer -domainname ABC

#Fix PC Domain trust relationship
Test-ComputerSecureChannel -credential domain\admin -Repair

### Dangerours - turn firewall off
Set-NetFirewallProfile -profile domain, public, private -Enabled true/false

