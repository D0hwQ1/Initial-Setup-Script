Function env([string]$env) {
    $INCLUDE = $env
    $OLDPATH = [System.Environment]::GetEnvironmentVariable('PATH','machine')
    $NEWPATH = "$OLDPATH;$INCLUDE"
    [Environment]::SetEnvironmentVariable("PATH", "$NEWPATH", "Machine")
}

env("C:\Python27")
env("C:\Users\pjt137\AppData\Local\Programs\Python\Python39\Scripts")
env("C:\Users\pjt137\AppData\Local\Programs\Python\Python39")

net localgroup administrators $(whoami) /add

Set-MpPreference -DisableIntrusionPreventionSystem $true
Set-MpPreference -DisableIOAVProtection $true
Set-MpPreference -DisableRealtimeMonitoring $true
Set-MpPreference -DisableScriptScanning $true
Set-MpPreference -EnableControlledFolderAccess Disabled
Set-MpPreference -EnableNetworkProtection AuditMode -Force
Set-MpPreference -MAPSReporting Disabled
Set-MpPreference -SubmitSamplesConsent NeverSend
Set-MpPreference -MAPSReporting Disabled
