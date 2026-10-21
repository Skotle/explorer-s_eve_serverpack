$ErrorActionPreference = 'Stop'
Set-Location -LiteralPath $PSScriptRoot

# Set JAVA17_HOME to override automatic Java discovery.
$candidates = @()
if ($env:JAVA17_HOME) { $candidates += Join-Path $env:JAVA17_HOME 'bin\java.exe' }
if ($env:JAVA_HOME) { $candidates += Join-Path $env:JAVA_HOME 'bin\java.exe' }
$candidates += Join-Path $PSScriptRoot 'runtime\bin\java.exe'
$candidates += Join-Path $env:USERPROFILE 'curseforge\minecraft\Install\java\java-runtime-gamma\bin\java.exe'
$javaCommand = Get-Command java.exe -ErrorAction SilentlyContinue
if ($javaCommand) { $candidates += $javaCommand.Source }
foreach ($base in @('C:\Program Files\Eclipse Adoptium', 'C:\Program Files\Java', 'C:\Program Files\Microsoft')) {
    if (Test-Path -LiteralPath $base) {
        $candidates += Get-ChildItem -LiteralPath $base -Directory | ForEach-Object { Join-Path $_.FullName 'bin\java.exe' }
    }
}
$java = $null
foreach ($candidate in ($candidates | Select-Object -Unique)) {
    if (Test-Path -LiteralPath $candidate) {
        $info = [Diagnostics.ProcessStartInfo]::new()
        $info.FileName = $candidate
        $info.Arguments = '-version'
        $info.UseShellExecute = $false
        $info.CreateNoWindow = $true
        $info.RedirectStandardError = $true
        $probe = [Diagnostics.Process]::Start($info)
        $version = $probe.StandardError.ReadToEnd()
        $probe.WaitForExit()
        $probe.Dispose()
        if ($version -match 'version "17\.') { $java = $candidate; break }
    }
}
if (-not $java) { throw 'Java 17 is required. Install 64-bit Java 17 or set JAVA17_HOME to its installation folder.' }
Write-Host "Java: $java"

$forgeArgs = 'libraries/net/minecraftforge/forge/1.19.4-45.3.0/win_args.txt'
if (-not (Test-Path -LiteralPath $forgeArgs)) {
    & $java '-Xmx1G' '-jar' 'installer/forge-1.19.4-45.3.0-installer.jar' '--installServer'
    if ($LASTEXITCODE -ne 0) { throw 'Forge installation failed. See installer log.' }
}
if (-not (Select-String -LiteralPath 'eula.txt' -Pattern '^\s*eula\s*=\s*true\s*$' -Quiet)) {
    Write-Host 'Read https://aka.ms/MinecraftEULA'
    Write-Host 'If you agree, change eula=false to eula=true in eula.txt, then run start-server.bat again.'
    exit 1
}
& $java '@user_jvm_args.txt' "@$forgeArgs" 'nogui'
exit $LASTEXITCODE
