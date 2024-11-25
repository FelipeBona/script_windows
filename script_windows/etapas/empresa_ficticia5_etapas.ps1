
    Clear-Host
    Write-Host ""
    Write-Host "========================================================================="
    Write-Host "      Lembrando que a Etapa 2 deve ser executada no perfil do usuário"
    Write-Host "========================================================================="
    Write-Host ""
    Write-Host ""
    Write-Host "1. Etapa 1"
    Write-Host "2. Etapa 2"
    Write-Host ""
    Write-Host ""
    Write-Host "0. Voltar"
    Write-Host ""
    Write-Host ""
    Write-Host ""


    $opcao2 = Read-host 'Escolha uma opção'
    switch($opcao2){
        0{clear-host; & ".\menu\menu_empresas.ps1"}
        1{clear-host; & ".\commands\ucpd.ps1"; & ".\updates\ms_win_updates.ps1"; & ".\admin_users\empresa_ficticia5_users.ps1"; & ".\img\wallpaper.ps1" ; Write-Host "Será necessário reiniciar o computador para que alguns comandos da Etapa 2 funcione"; & ".\menu\aviso_hostname.ps1"; & ".\commands\restart.ps1"; Pause}
        
        2{clear-host;  & ".\apps\TeamViewer.ps1" ; & ".\apps\bradesco.ps1"; & ".\commands\networking_private.ps1"; & ".\updates\ms_win_updates.ps1"; & ".\commands\power.ps1"; & ".\commands\camera.ps1"; & ".\commands\audio.ps1"; & ".\menu\aviso.ps1"; & ".\commands\restart.ps1"; Pause}
    }







