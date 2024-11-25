
    Invoke-WebRequest -Uri “https://guardiao.itau.com.br/UpdateServer/aplicativoitau.msi” -OutFile “C:\aplicativoitau.msi”

    Start-Process msiexec.exe -ArgumentList "/i C:\aplicativoitau.msi /quiet" -Wait


    Remove-Item -path "C:\aplicativoitau.msi" -recurse

    Write-Host "Itaú instalado com sucesso."
    Pause