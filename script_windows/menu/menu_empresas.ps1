
    Clear-Host
    Write-Host "" 
    Write-Host ""
    Write-Host ""
    Write-Host ""
    Write-Host "========================================================================="
    Write-Host "                  Selecione a empresa que deseja configurar"
    Write-Host "========================================================================="
    Write-Host "" 
    Write-Host "" 
    Write-Host "1. Empresa Fictícia 1"
    Write-Host "2. Empresa Fictícia 2" 
    Write-Host "3. Empresa Fictícia 3"
    Write-Host "4. Empresa Fictícia 4"
    Write-Host "5. Empresa Fictícia 5"
    Write-Host "6. Adicione mais empresas como preferir"
    Write-Host ""
    Write-Host ""
    Write-Host ""
    Write-Host ""
    Write-Host ""
    Write-Host ""
    Write-Host ""
    Write-Host "99. O que este instalador irá executar? "
    Write-Host ""
    Write-Host ""
    Write-Host ""
    Write-Host "0. Menu principal"
    Write-Host ""
    Write-Host ""
    $respostas2 = Read-Host "Escolha uma das Opções"

    switch($respostas2){
    0 {clear-host; & ".\main_menu.ps1"}    
    1 {clear-host; & ".\etapas\empresa_ficticia2_etapas.ps1"}
    2 {clear-host; & ".\etapas\empresa_ficticia3_etapas.ps1"}
    3 {clear-host; & ".\etapas\empresa_ficticia3_etapas.ps1"}
    4 {clear-host; & ".\etapas\empresa_ficticia4_etapas.ps1"}
    5 {clear-host; & ".\etapas\empresa_ficticia5_etapas.ps1"}
    
    
    99{clear-host; & ".\menu\info.ps1"}
    }
