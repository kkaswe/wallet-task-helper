$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
$java = if ($env:JAVA_EXE) { $env:JAVA_EXE } else { 'java' }
if (-not $env:APKTOOL_JAR -or -not (Test-Path -LiteralPath $env:APKTOOL_JAR)) {
    throw 'Set APKTOOL_JAR to your local Apktool 2.11.1 JAR.'
}
New-Item (Join-Path $root 'dist'), (Join-Path $root '.cache/framework') -ItemType Directory -Force | Out-Null
& $java -jar $env:APKTOOL_JAR b (Join-Path $root 'app') -p (Join-Path $root '.cache/framework') -o (Join-Path $root 'dist/wallet-task-helper-unsigned.apk')
if ($LASTEXITCODE -ne 0) { throw 'APK build failed.' }
Write-Output 'Built dist/wallet-task-helper-unsigned.apk. Sign with your own key before installation.'
