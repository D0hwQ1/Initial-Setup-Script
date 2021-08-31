[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Python27", "Machine")
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Users\pjt137\AppData\Local\Programs\Python\Python39\Scripts", "Machine")
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Users\pjt137\AppData\Local\Programs\Python\Python39", "Machine")

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