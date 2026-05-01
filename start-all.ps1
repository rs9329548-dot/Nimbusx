$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$backend = Join-Path $root 'backend'
$frontend = Join-Path $root 'frontend'

Write-Host "Starting backend in a new PowerShell window..."
Start-Process powershell -ArgumentList @(
    '-NoExit',
    '-Command',
    "Set-Location -LiteralPath '$backend'; .\\mvnw.cmd spring-boot:run"
)

Write-Host "Starting frontend in a new PowerShell window..."
Start-Process powershell -ArgumentList @(
    '-NoExit',
    '-Command',
    "Set-Location -LiteralPath '$frontend'; npm run dev"
)
