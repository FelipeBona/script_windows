    Write-Host "Alterando opções de energia...";

	powercfg /change monitor-timeout-ac 0
	powercfg /change monitor-timeout-dc 0
	powercfg /change standby-timeout-ac 0
	powercfg /change standby-timeout-dc 0

	# Configurar o botão de energia para desligar o PC (na bateria)
	powercfg /setdcvalueindex SCHEME_CURRENT SUB_BUTTONS PBUTTONACTION 3

	# Configurar o botão de energia para desligar o PC (na tomada)
	powercfg /setacvalueindex SCHEME_CURRENT SUB_BUTTONS PBUTTONACTION 3

	# Configurar "Nada a fazer" quando a tampa for fechada (na bateria)
	powercfg /setdcvalueindex SCHEME_CURRENT SUB_BUTTONS LIDACTION 0

	# Configurar "Nada a fazer" quando a tampa for fechada (na tomada)
	powercfg /setacvalueindex SCHEME_CURRENT SUB_BUTTONS LIDACTION 0





   

    Write-Host "==========================================="
    Write-Host "       Opções de energia definida"
    Write-Host "==========================================="