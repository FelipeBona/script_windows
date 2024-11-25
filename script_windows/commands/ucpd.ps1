
# Alterando o comando UCPD para que seja possível alterar o comando que desativa os Widgets da barra de tarefas    

Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\UCPD" -Name "Start" -Value 1 -Type DWord -Force