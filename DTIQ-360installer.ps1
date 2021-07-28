## Created by Bfreitas Contact for help####
###Envoke Via CMD###
# powershell -command "iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/bfreitasdtiq/DTIQ-Scripts/main/DTIQ-360installer.ps1'))" 


###### Vars#####
$Path="C:\temp"
$URL = "https://files-us-ps2.go360iq.com/_Files/Software/360iQViewer/360iQViewer.Setup.v.5.3.0.161.exe"
$OutputURL = "360iQViewer.Setup.v.5.3.0.161.exe"




####Decentralized Logging due to remote installation
Start-Transcript -Path $path\$scriptlogfile
Write-Host "everything will end up in $path\$scriptlogfile"

Write-host "Checking for folder"
####Folder check#####
if (!(Test-Path $Path))
{
New-Item -itemType Directory -Path $Path -Name $FolderName
}
else
{
cls
write-host "Folder already exists"
}
Write-host "Downloading $url"
##Download File Via $URL
Invoke-WebRequest -Uri "$URL" -OutFile "$outputURL"

Write-host "Starting EXE installation"
##Executing EXE
cd C:
cd temp
.\360iQViewer.Setup.v.5.3.0.161.exe /quiet /passive

Stop-Transcript
