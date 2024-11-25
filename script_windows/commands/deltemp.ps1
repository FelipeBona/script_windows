
    $tempfolders = @(“C:\Windows\Temp\*”, “C:\Windows\Prefetch\*”, “C:\Documents and Settings\*\Local Settings\temp\*”, “C:\Users\*\Appdata\Local\Temp\*”)

    
    Remove-Item $tempfolders -force -recurse -ErrorAction SilentlyContinue 
    Write-Host "================================"
    Write-Host "    Maquina limpa com sucesso"
    Write-Host "================================"
    