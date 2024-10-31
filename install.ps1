$editorChoice = Read-Host "Install for Neovim or Vim? (Enter 'nvim' for Neovim or 'vim' for Vim)"

if ($editorChoice -eq "nvim") {
    $configPath = "$env:LOCALAPPDATA\nvim\plugin"
} elseif ($editorChoice -eq "vim") {
    $configPath = "$env:VIM\vimfiles\plugin"
} else {
    Write-Host "Invalid choice. Please run the script again and enter 'nvim' or 'vim'."
    exit
}


if (!(Test-Path $configPath)) { New-Item -ItemType Directory -Path $configPath | Out-Null }


$localPluginPath = ".\plugin"

Get-ChildItem -Path $localPluginPath -File | ForEach-Object {
    Move-Item -Path $_.FullName -Destination $configPath -Force
}

Write-Host "ThemeSwitcher installed successfully!"

