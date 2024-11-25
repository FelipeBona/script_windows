
    Invoke-WebRequest -Uri “    https://banco.bradesco/assets/pessoajuridica/aplicativos/navegador-exclusivo/windows/Instalador_NEB_4.1.0.exe” -OutFile “C:\bradesco.exe”

    Start-Process "C:\bradesco.exe" -ArgumentList "/S" -Wait

    Remove-Item -path "C:\bradesco.exe" -recurse

    Write-Host "Bradesco instalado com sucesso."
    Pause
