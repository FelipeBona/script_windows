
    Invoke-WebRequest -Uri “https://www.grigsoft.com/wincmp-setup.exe” -OutFile “C:\compareit.exe”

    Start-Process "C:\compareit.exe" -ArgumentList "/S" -Wait

    Remove-Item -path "C:\compareit.exe" -recurse

    Write-Host "CompareIT instalado com sucesso."
    
