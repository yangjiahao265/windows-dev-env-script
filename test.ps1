[string]$str = Read-Host "input"
if ([string]$str) {
    Write-Host "The string is not empty. [string]$str"
} else {
    Write-Host "The string is null or empty."
}
