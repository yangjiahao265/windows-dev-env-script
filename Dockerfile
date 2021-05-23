FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019

LABEL maintaner="yangjiahao" version="1.0" mail="yangjiahao@gmail.com"


WORKDIR /dev

COPY ./ /dev

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
#RUN ./test/hello.ps1

ENTRYPOINT powershell ./test/hello.ps1