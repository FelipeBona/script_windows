# Caminho da pasta onde o script está localizado
$scriptDir = $PSScriptRoot

# Caminho completo para o arquivo EXE (supondo que o arquivo exe esteja na mesma pasta que o script)
$exeFilePath = Join-Path $scriptDir "TeamViewer_Host.exe"

# Verifica se o arquivo EXE existe
if (Test-Path $exeFilePath) {
    Write-Host "App encontrado!"
    Start-Sleep(2)
    Write-Host "Instalando..."
    
    # Caminho para o diretório de instalação desejado
    $destinoInstalacao = "C:\"

    # Comando para instalar o arquivo EXE (ajuste conforme necessário para os parâmetros específicos do instalador)
    $arguments = "/S /D=`"$destinoInstalacao`""
    
    # Executa o processo de instalação
    Start-Process $exeFilePath -ArgumentList $arguments -Wait
    
    # Verificar se o diretório de instalação foi criado
    if (Test-Path $destinoInstalacao) {
        Write-Host "======================================="
        Write-Host "   TeamViewer instalado com sucesso!"
        Write-Host "======================================="
    } else {
        Write-Host "Falha na instalação."
    }
} else {
    Write-Host "Arquivo EXE não encontrado: $exeFilePath"
}
