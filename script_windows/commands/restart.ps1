do{
# Pergunta ao usuário se deseja reiniciar o computador
$resposta = Read-Host -Prompt "Você deseja reiniciar o computador? (s/n): "

# Verifica a resposta
switch ($resposta.ToLower()) {
    "s" {
        Write-Host "Reiniciando o computador..."
        Start-Sleep(2)
        Restart-Computer
    }
    "n" {
        Write-Host "Voltando ao menu principal..."
        Start-Sleep(2)
        & ".\main_menu.ps1"
        $validResponse - $true
    }
    default {
        $resposta
        Write-Host "Resposta inválida. Por favor, responda com 's' ou 'n'."
        $validResponse = $false
        
    }
}
} while (-not $validResponse)
