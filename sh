Hosted File:
Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "Youtube1234" -Force)
Get-LocalUser -Name "Administrator" | Enable-LocalUser 
Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
tar xf ngrok.zip
Copy ngrok.exe C:\Windows\System32
cmd /c echo ./ngrok.exe authtoken "23I3hyyNIK0DMZrKUfDK5cmIAzZ_3beLy8SjKJikC6i5y7eDBf " >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -n 999999 10.10.10.10 >>a.ps1
.\a.ps1
