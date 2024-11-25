
    Write-Host "Abrindo a câmera..."
    Start-Process microsoft.windows.camera:
    Start-Sleep -Seconds 5
    Get-Process -Name "WindowsCamera" | Stop-Process
    Write-Host ""
    Write-Host "=============================================================================================================="
    Write-Host "    Caso a câmera não esteja funcionando, atualize os drivers, ou verifique se não é problema de hardware"
    Write-Host "=============================================================================================================="
    Write-Host ""
    Write-Host ""
    Write-Host ""
