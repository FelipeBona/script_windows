# Alterando a rede de publica para privada"
Write-Host "Alterando a rede de publica para privada..."
Set-NetConnectionProfile -NetworkCategory Private
Write-Host "==========================================="
Write-Host "    Rede alterada de pública para privada"
Write-Host "==========================================="