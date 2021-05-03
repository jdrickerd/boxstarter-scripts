# Description: Dev Boxstarter Script
# Author: jdrickerd
# Standard applications/settings for development

Disable-UAC


#--- Windows Subsystems/Features ---
choco install -y Microsoft-Hyper-V-All -source windowsFeatures
choco install -y Microsoft-Windows-Subsystem-Linux -source windowsfeatures

#--- Languages ---
choco install -y python3
choco install nodejs

#--- Tools ---
choco install -y 7zip.install
choco install -y notepadplusplus
choco install -y git
choco install -y putty
choco install -y winscp
choco install -y awscli
choco install -y tortoisesvn

#--- VS Code ---
choco install -y visualstudiocode

#--- VS Code extensions ---
choco install -y vscode-docker
choco install -y vscode-powershell
choco install -y vscode-csharp

Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula
