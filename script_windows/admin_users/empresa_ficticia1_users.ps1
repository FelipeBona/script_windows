#Alterar e definir senha de admin
Write-Host "Alterando e ou definindo usuário e senha admin..."

    
$newUsername = "Admin"
$newPassword = ConvertTo-SecureString "admin@empresa_ficticia1" -AsPlainText -Force
$currentUsername = (Get-WmiObject -Class Win32_ComputerSystem | Select-Object -ExpandProperty UserName).Split('\')[-1]
Rename-LocalUser -Name $currentUsername -NewName $newUsername
Set-LocalUser -Name $newUsername -Password $newPassword

Write-Host "===================================================================================================="
Write-Host "    Nome de usuário alterado de $currentUsername para $newUsername e senha definida com sucesso."
Write-Host "===================================================================================================="

#Criando user padrão
Write-Host "Criando usuário e senha padrão..."
net user 'Nome da empresa' senha_que_desejar /add;
Write-Host "==========================================="
Write-Host "       Usuário padrão definido"
Write-Host "==========================================="