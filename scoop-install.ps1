#
# scoop install script
#

# changeExecPolicy 
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# setupAppInstallPath
#[string]$ScoopLocalInstallPath = Read-Host "请输入Scoop应用本地安装目录(直接回车设置默认目录)"
#if ($ScoopLocalInstallPath) {
#    $env:SCOOP = $ScoopLocalInstallPath
#    [Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
#    Write-Host "将Scoop应用本地安装目录设置为: $ScoopLocalInstallPath"
#}
#else {
#    Write-Host "Scoop应用本地安装目录默认为: C:\Users\<user>\scoop"
#}
#
#[string]$ScoopGlobalInstallPath = Read-Host "请输入Scoop应用全局安装目录(直接回车设置默认目录)"
#if ($ScoopGlobalInstallPath) {
#    $env:SCOOP_GLOBAL = $ScoopGlobalInstallPath
#    [Environment]::SetEnvironmentVariable('SCOOP_GLOBAL', $env:SCOOP_GLOBAL, 'Machine')
#    Write-Host "将Scoop应用全局安装目录设置为: $ScoopGlobalInstallPath"
#}
#else {
#    Write-Host "Scoop应用全局安装目录默认为: C:\ProgramData\scoop"
#}


# installScoopFromGithub
$proxyUrl = $env:http_proxy

$webClient = New-Object System.Net.WebClient

$url = "https://get.scoop.sh"

if ($proxyUrl)
{
    $proxyUrl = $proxyUrl.Split(":")

    Write-Output $proxyUrl[0]
    Write-Output $proxyUrl[1]

    $webProxy = New-Object System.Net.WebProxy($proxyUrl[0],$proxyUrl[1])

    $webClient.Proxy = $webProxy
}

Write-Output $webClient.Proxy

Invoke-Expression $webClient.DownloadString($url)

#Invoke-Expression (New-Object System.Net.WebClient).Proxy.GetProxy($env:http_proxy).DownloadString('https://get.scoop.sh')

