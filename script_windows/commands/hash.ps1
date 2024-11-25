

    Write-Host "Criando pasta HWID no disco local C..."
    New-Item -Path 'C:\HWID' -ItemType Directory

    Write-Host ""
    Write-Host ""
    Write-Host "Enviando arquivo Código HASH para a pasta HWID no disco local C..."
    Set-ExecutionPolicy RemoteSigned 
    Set-Location C:\\HWID 
    Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted 
    Install-Script -Name Get-WindowsAutoPilotInfo 
    Get-WindowsAutoPilotInfo.ps1 -OutputFile AutoPilotHWID.csv -append
    Set-ExecutionPolicy Unrestricted
    
    Write-Host ""
    Write-Host ""
    Write-Host ""
    Write-Host "=============================================================================================================="
    Write-Host "     Agora renomeie a pasta com o hostname da maquina, e enviei para uns dos colaboradores de servidores."
    Write-Host "=============================================================================================================="
    Write-Host ""
    Write-Host ""