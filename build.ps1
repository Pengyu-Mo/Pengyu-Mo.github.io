# Production-style build into _site/ (same as the GitHub Actions deploy). See serve.ps1 for details.
Set-Location $PSScriptRoot
$env:PATH = "C:\Ruby33-x64\msys64\ucrt64\bin;C:\Ruby33-x64\bin;$env:USERPROFILE\anaconda3;$env:USERPROFILE\anaconda3\Scripts;$env:PATH"
$env:JEKYLL_ENV = "production"
bundle exec jekyll build @args
