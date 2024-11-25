

    Invoke-WebRequest -Uri “https://www.adolix.com/download/AdolixSplitMergePDFSetup.exe?utm_source=site” -OutFile “C:\AdolixSplitMergePDFSetup.exe”

    Start-Process "C:\AdolixSplitMergePDFSetup.exe" -ArgumentList "/S" -Wait

    Remove-Item -path "C:\AdolixSplitMergePDFSetup.exe" -recurse


    Write-Host "Adolix Free PDF instalado com sucesso."
    Pause

