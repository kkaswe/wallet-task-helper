$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
$java = if ($env:JAVA_EXE) { $env:JAVA_EXE } else { 'java' }
$javac = if ($env:JAVA_EXE) { Join-Path (Split-Path $env:JAVA_EXE -Parent) 'javac.exe' } else { 'javac' }
$out = Join-Path $root '.cache/tests'
New-Item $out -ItemType Directory -Force | Out-Null
$sources = @('RunPolicy', 'UnlockPolicy', 'ScheduleTime', 'WalletVideoFlow') | ForEach-Object { Join-Path $root "patch-src/$_.java" }
$tests = @('RunPolicyTest', 'UnlockPolicyTest', 'ScheduleTimeTest', 'WalletVideoFlowTest')
$testFiles = $tests | ForEach-Object { Join-Path $root "tests/$_.java" }
& $javac -encoding UTF-8 -d $out @sources @testFiles
if ($LASTEXITCODE -ne 0) { throw 'Test compilation failed.' }
foreach ($test in $tests) {
    & $java -cp $out $test
    if ($LASTEXITCODE -ne 0) { throw "Failed: $test" }
}
