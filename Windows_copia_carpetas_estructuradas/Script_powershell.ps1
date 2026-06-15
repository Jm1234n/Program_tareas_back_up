# Origen
$origen = "Y:\SIGMTP\BDP"

# Destino base
$destinoBase = "D:\backup"

# Fecha
$fecha = Get-Date -Format "yyyy-MM-dd_HH-mm"

# Destino final
$destino = Join-Path $destinoBase $fecha

# Crear carpeta
New-Item -ItemType Directory -Path $destino -Force

# Log
$log = Join-Path $destinoBase "backup_$fecha.log"

# Copia
robocopy `
    $origen `
    $destino `
    /E `
    /Z `
    /R:3 `
    /W:10 `
    /MT:16 `
    /TEE `
    /LOG:$log
