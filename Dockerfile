FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019

LABEL maintaner="yangjiahao" version="1.0" mail="yangjiahao@gmail.com"


ENV http_proxy=172.22.160.1:7890
ENV https_proxy=172.22.160.1:7890


WORKDIR /dev

COPY ./ /dev

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
RUN ./windows-dev-env-setup-start.ps1

ENTRYPOINT ["powershell.exe", "-NoLogo", "-ExecutionPolicy", "Bypass"]