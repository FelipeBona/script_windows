# Verifica se o script está sendo executado como administrador
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process PowerShell -Verb RunAs "-NoProfile -ExecutionPolicy Bypass -Command `"cd '$pwd'; & '$PSCommandPath';`"";
    exit;
}

# Verifica se a política de execução permite a execução de scripts
$execPolicy = Get-ExecutionPolicy
if ($execPolicy -ne "RemoteSigned" -and $execPolicy -ne "Unrestricted") {
    Write-Host "Ajustando a política de execução para permitir a execução deste script..."
    try {
        Set-ExecutionPolicy RemoteSigned -Scope Process -Force
    } catch {
        Write-Host "Não foi possível ajustar a política de execução. Execute este script manualmente como administrador após ajustar a política de execução."
        pause
        exit
    }
}



function vocetemcerteza {
    $vocetemcerteza = Read-Host "Você deseja sair? (s/n)"  
    if ($vocetemcerteza -eq "s") {
        Exit
    } elseif ($vocetemcerteza -eq "n") {
        mainmenu
    } else {
        Write-Host -ForegroundColor Red "Opção inválida."
        vocetemcerteza  
    }
}



function mainmenu {
    Clear-Host
    Write-Host "" 
    Write-Host ""
    Write-Host "Todos os direitos reservados © Igor Lima - 2024"
    Write-Host "======================================================================================================================"
    Write-Host "                                           Escolha uma das opções abaixo"
    Write-Host "======================================================================================================================" 
    Write-Host "" 
    Write-Host "1. Pós formatação"
    Write-Host ""
    Write-Host "2. Criando código hash (Apenas para maquinas novas que possuem intune)" 
    Write-Host ""
    Write-Host "3. Atualizar todos os apps"
    Write-Host ""
    Write-Host "4. Antivírus do Windows"
    Write-Host ""
    Write-Host "5. Roda Sfc Scan + DISM"
    Write-Host ""
    Write-Host "6. Limpar arquivos temporários"
    Write-Host ""
    Write-Host ""
    Write-Host ""
    Write-Host ""
    Write-Host "" 
    Write-Host ""  
    Write-Host "" 
    Write-Host "0. Para Fechar Instalador Autônomo" 
    Write-Host ""
    Write-Host ""
    Write-Host "" 
    $resposta = Read-Host "Escolha uma das Opções"



    switch ($resposta) {
    1{clear-host; & ".\menu\menu_empresas.ps1"} 
	2{clear-host; & ".\commands\hash.ps1"; Pause}
    3{ Clear-Host; winget upgrade --all}
    4{ Clear-Host; mrt; Pause}
    5{Clear-Host; & ".\commands\dism.ps1"; Pause}
    6{ Clear-Host; & ".\commands\deltemp.ps1"; Pause}
    
    
    

        0 { vocetemcerteza }
        default {
            Write-Host ""
            Write-Host -ForegroundColor Magenta ""
            Start-Sleep 1
            Clear-Host
            mainmenu
        }
    }

    # Retornar ao menu principal após a execução de uma ação
    mainmenu
}

# Iniciar o menu principal
mainmenu
