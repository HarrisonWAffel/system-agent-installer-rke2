$ErrorActionPreference = 'Stop'

.$PSScriptRoot/version.ps1

Set-Location $PSScriptRoot/..

docker login -u $env:DOCKER_USERNAME -p $env:DOCKER_PASSWORD

docker push $env:IMAGE-windows-$env:ARCH

Write-Host "Pushed $env:IMAGE-windows-$env:ARCH"
