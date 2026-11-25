# Local preview: builds the site and serves it at http://localhost:4000 with live reload.
# Run  .\serve.ps1  from a PowerShell terminal in this folder (Ctrl+C to stop).
#
# Prerequisites (already installed on this machine):
#   - Ruby 3.3 + MSYS2 DevKit  -> C:\Ruby33-x64                     (winget: RubyInstallerTeam.RubyWithDevKit.3.3)
#   - ImageMagick (MSYS2 pkg)  -> C:\Ruby33-x64\msys64\ucrt64\bin    (ridk exec pacman -S mingw-w64-ucrt-x86_64-imagemagick)
#   - Python with nbconvert    -> anaconda3                          (for the Jupyter notebook demo post)
#
# ImageMagick is put FIRST on PATH so that its convert.exe wins over Windows' own convert.exe
# (the NTFS converter in System32), which the jekyll-imagemagick plugin would otherwise call.

Set-Location $PSScriptRoot

$imagemagick = "C:\Ruby33-x64\msys64\ucrt64\bin"
$ruby        = "C:\Ruby33-x64\bin"
$python      = "$env:USERPROFILE\anaconda3;$env:USERPROFILE\anaconda3\Scripts"

$env:PATH = "$imagemagick;$ruby;$python;$env:PATH"

if (-not (Test-Path "vendor\bundle")) {
    Write-Host "Installing gems (first run only)..." -ForegroundColor Cyan
    bundle config set --local path vendor/bundle
    bundle install
}

Write-Host "Starting Jekyll at http://localhost:4000  (Ctrl+C to stop)" -ForegroundColor Green
bundle exec jekyll serve --livereload --port 4000 @args
