
    sfc /scannow;
    $dismaceitar = Read-Host "Deseja rodar o DISM? (s/n)";
    


    if($dismaceitar -eq "s"){
        $pergunta2 = Read-Host "Para verificar se há corrupção na imagem do Windows(CheckHealth)--> DIGITE [c]
                                Para realizar uma verificação mais completa para detectar corrupção na imagem(ScanHealth)--> DIGITE [s]
                                Para reparar a imagem do Windows usando arquivos de origem especificados(RestoreHealth)--> DIGITE [r]
                                
                                Digite uma das opções: ";

        if($pergunta2 -eq "c"){
            dism /Online /Cleanup-Image /CheckHealth
        }elseif($pergunta -eq "s"){dism /Online /Cleanup-Image /ScanHealth}
        elseif($pergunta2 -eq "r"){dism /Online /Cleanup-Image /RestoreHealth}
        else{Write-Host -ForegroundColor Red "Opção inválida."$pergunta2}
        Write-Host "Comando concluído com sucesso---Voltando ao menu principal"
        Start-Sleep 2
    }elseif($dismaceitar -eq "n"){
        goto mainmenu
    }else{
         Write-Host -ForegroundColor Red "Opção inválida."
         $dismaceitar
    }

