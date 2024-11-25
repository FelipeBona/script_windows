

    clear-host
    Write-Host ""
    Write-Host ""
    Write-Host ""
    Write-Host "==========="
    Write-Host "  Etapa 1"
    Write-Host "==========="
    Write-Host ""
    Write-Host "1° Atualizar windows update "
    Write-Host "2° Atualizar apps da microsoft store"
    Write-Host "3° Atualizar instalador de aplicativos da microsoft"
    Write-Host "4° Alterar/definir senha admin"
    Write-Host "5° Criar usuário padrão com senha(caso tenha)"
    Write-Host ""
    Write-Host "==========="
    Write-Host "  Etapa 2"
    Write-Host "==========="
    Write-Host "OBS: Essa etapa não pode ser rodada no perfil admin, e sim no perfil de usuário padrão"
    Write-Host ""
    Write-Host "1° Baixando apps essenciais"
    Write-Host "2° Alterar a rede de publica para privada"
    Write-Host "3° Atualizar windows update"
    Write-Host "4° Definições de energia"
    Write-Host "5° Teste de câmera"
    Write-Host "6° Teste Audio"
    Write-Host ""
    Write-Host ""

    $opcao = Read-Host "Pressione 0 para voltar"

    switch($opcao){
        0{clear-host; & ".\menu\menu_empresas.ps1"}
    }

