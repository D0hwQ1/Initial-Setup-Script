from os import getenv, getcwd, system, remove, rename, chdir, path
import sys

wsl2 = 'https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi'
winget = 'https://github.com/microsoft/winget-cli/releases/download/v1.0.11692/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle'
meslolgs = 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf'
startup = getenv('APPDATA')+'\\Microsoft\\Windows\\Start Menu\\Programs\\Startup'

if getattr(sys, 'frozen', False):
    chdir(path.dirname(sys.executable))
    program = sys.executable

elif __file__:
    chdir(path.dirname(__file__))
    program = __file__

if getcwd() != startup:
    system('powershell Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted')

    system('powershell Invoke-WebRequest -Uri ' + winget + ' -outfIle winget.msixbundle')
    system('winget.msixbundle')
    system('powershell Invoke-WebRequest -Uri ' + meslolgs + ' -outfIle meslolgs.ttf')
    system('meslolgs.ttf')
    
    system('powershell dism /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart')
    system('powershell dism /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart')

    system('powershell src/winget.ps1')
    system('powershell src/reg.ps1')
    system('powershell src/env.ps1')

    remove('winget.msixbundle')
    remove('meslolgs.ttf')
    rename('c:\python27\python.exe', 'c:\python27\python2.exe')
    
    rename(program, startup+'\\'+program)
    system('shutdown -r -t 5')

else:
    system('curl ' + wsl2 + " > wsl2.msi")
    system('wsl2.msi')
    system('powershell wsl --set-default-version 2')

    remove('wsl2.msi')
    remove(program)