REG ADD "HKEY_USERS\.DEFAULT\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /d "2" /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /d "2" /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Keyboard" /v "KeyboardDelay" /d "0" /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Keyboard" /v "KeyboardSpeed" /d "31" /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatDelay" /d "0" /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatRate" /d "0" /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "BounceTime" /d "0" /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /d "0" /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" /v "LayerDriver KOR" /d "kbd101a.dll" /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" /v "OverrideKeyboardType" /d "8" /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" /v "OverrideKeyboardSubtype" /d "3" /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" /v "OverrideKeyboardIdentifier" /d "PCAT_101AKEY" /f

REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSecondsInSystemClock" /t "REG_DWORD" /d "1" /f
REG ADD "HKEY_CURRENT_USER\Control Panel\International" /v "sShortDate" /d "yyyy-MM-dd dddd" /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\CommonGlobUserSettings\Control Panel\International" /v "sShortDate" /d "yyyy-MM-dd dddd" /f

REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t "REG_DWORD" /d "70" /f

REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center" /v "FirewallDisableNotify" /d "1" /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center" /v "AntiVirusDisableNotify" /d "1" /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center" /v "FirstRunDisabled" /d "1" /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center" /v "AntiVirusOverride" /d "1" /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center" /v "FirewallOverride" /d "1" /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /d "1" /f

REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /d "1" /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "LowRiskFileTypes" /d ".avi;.bat;.com;.cmd;.exe;.htm;.html;.lnk;.mpg;.mpeg;.mov;.mp3;.msi;.m3u;.rar;.reg;.txt;.vbs;.wav;.zip;" /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "ScanWithAntiVirus" /d "3" /f
# REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /d "0" /f