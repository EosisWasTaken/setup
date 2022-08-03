Set-Alias vim nvim
Set-Alias g git
Set-Alias grep findstr
Set-Alias f fuck
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\the-unnamed.omp.json" | Invoke-Expression

Import-Module -Name Terminal-Icons

Import-Module z

Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History

function which ($command) {
  Get-Command  -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

cls
$env:PYTHONIOENCODING='utf-8'
iex "$(thefuck --alias)"
