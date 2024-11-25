    # Remove widgets e visão de tarefas
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarDa" -Value 0
    
    # Ajusta o ícone e rótulo de pesquisa
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Value 3
    
    # Reinicia o explorer para aplicar as mudanças
    Stop-Process -Name explorer -Force
    Start-Process explorer
    
    # Voltando para o que era antes
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\UCPD" -Name "Start" -Value 1 -Type DWord -Force

    Write-Host ""
    Write-Host "=============================================================================="
    Write-Host "    Widgets, visão de tarefas removido \ barra de pesquisas ajustadas"
    Write-Host "=============================================================================="
    Write-Host ""
    Write-Host ""
    Write-Host ""