
$localwall = ".\img\wallpaper.jpg"
$localdestino = "C:\users\[SEU USUÁRIO VAI AQUI]\appdata\local\packages\microsoft.windows.photos_8wekyb3d8bbwe\localstate\photosappbackground\"

Copy-item -Path $localwall -Destination $localdestino


$LockScreenImage = "C:\users\[SEU USUÁRIO VAI AQUI]\appdata\local\packages\microsoft.windows.photos_8wekyb3d8bbwe\localstate\photosappbackground\wallpaper.jpg"

New-Item HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP -Force

New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP" -Name LockScreenImagePath -Value $LockScreenImage -PropertyType String -Force | Out-Null


# Defina o caminho da imagem e o estilo
$wallpaperPath = "C:\users\[SEU USUÁRIO VAI AQUI]\appdata\local\packages\microsoft.windows.photos_8wekyb3d8bbwe\localstate\photosappbackground\wallpaper.jpg"
$wallpaperStyle = 10  # 0 - Preencher a tela, 2 - Esticar, 6 - Ajustar
$tileWallpaper = 0  # 0 - Não repetir, 1 - Repetir
    
# Atualiza o registro
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\" -Name Wallpaper -Value $wallpaperPath
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\" -Name WallpaperStyle -Value $wallpaperStyle
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\" -Name TileWallpaper -Value $tileWallpaper
    
Write-Host "===================================================================================================="
Write-Host "               Imagem alterada com sucesso! Caso não apareça, reinicie o computador"
Write-Host "===================================================================================================="