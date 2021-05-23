scoop config proxy $env:http_proxy

# 预安装必要软件
scoop install sudo 7zip git aria2

# 配置shovel
scoop config SCOOP_REPO 'https://github.com/Ash258/Scoop-Core'

# 配置aria2
scoop config aria2-enabled true

scoop update




