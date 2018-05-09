# Description: Dev Boxstarter Script
# Author: jdrickerd
# Standard applications/settings for development

Disable-UAC

#--- Windows Features ---
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions

#--- File Explorer Settings ---
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneShowAllFolders -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name MMTaskbarMode -Value 2

#--- Windows Subsystems/Features ---
choco install -y Microsoft-Hyper-V-All -source windowsFeatures
choco install -y Microsoft-Windows-Subsystem-Linux -source windowsfeatures

#--- Ubuntu ---
Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1604 -OutFile ~/Ubuntu.appx -UseBasicParsing
Add-AppxPackage -Path ~/Ubuntu.appx

#--- Fonts ---
choco install -y inconsolata

#--- Languages ---
choco install -y python
choco install -y pip
choco install nodejs

#--- Tools ---
choco install -y docker-for-windows
choco install -y 7zip.install
choco install -y notepadplusplus
choco install -y git
choco install -y putty
choco install -y winscp
choco install -y awscli
choco install -y tortoisesvn

#--- Browsers ---
choco install -y googlechrome

#--- VS Code ---
choco install -y visualstudiocode

#--- VS Code extensions ---
choco install -y vscode-docker
choco install -y vscode-powershell
choco install -y vscode-csharp

Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula
