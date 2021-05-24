set-strictmode -off
#. "$psscriptroot/test/test.ps1"

Write-Output $env:http_proxy

netsh winhttp set proxy $env:http_proxy

PING.EXE raw.githubusercontent.com

# 安装Scoop
. "$psscriptroot/scoop-install.ps1"
# 配置Scoop
. "$psscriptroot/scoop-setup.ps1"

