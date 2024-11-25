#Atualizar update
Write-Host "Atualizando windows update...";
Install-Module -Name PSWindowsUpdate -Force -SkipPublisherCheck;
Import-Module PSWindowsUpdate;
Get-WindowsUpdate;
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -Install;
Write-Host "==========================================="
Write-Host "       Windows update atualizado"
Write-Host "==========================================="

#Atualizar ms store e instalador de aplicativos
Write-Host "Atualizando MS Store e instaladores de apps..."
winget upgrade --all;
Write-Host "==========================================="
Write-Host "       MS Store atualizado"
Write-Host "==========================================="