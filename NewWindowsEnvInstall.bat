echo OFF

NET SESSION >nul 2>&1

IF %ERRORLEVEL% EQU 0 (

   echo.

) ELSE (

   echo.-------------------------------------------------------------

   echo ERROR: YOU ARE NOT RUNNING THIS WITH ADMINISTRATOR PRIVILEGES.

   echo. -------------------------------------------------------------

   echo. If you're seeing this, it means you don't have admin privileges!

   pause

   echo.

   echo. You will need to restart this program with Administrator privileges by right-clicking and select "Run As Administrator"

   pause 

    echo.

   echo Press any key to leave this program. Make sure to Run As Administrator next time!

   pause

   EXIT /B 1

)
powershell -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco feature enable -n=allowGlobalConfirmation

echo Chocolatey is ready to begin installing packages!

pause

@rem ----[ Whatever you want to install, place it below this point, each item on its own line (to make it easier to find later on. ] ----


choco install 7zip
choco install anki
choco install audacity
choco install auto-dark-mode
choco install bulk-crap-uninstaller
choco install bleachbit
choco install brave
choco install cryptomator
choco install czkawka
choco install eartrumpet
choco install equalizerapo
choco install everything
choco install googledrive
choco install libreoffice-fresh
choco install librewolf

choco install mp3tag
choco install musicbee
choco install notepadplusplus
choco install obsidian
choco install powertoys
choco install protonvpn
choco install quicklook
choco install qview
choco install sharex
choco install synctrayzor
choco install throttlestop
choco install thunderbird
choco install vlc


@rem ---[You can add as many programs here as you desire!]----

pause
echo.
echo Your installation is complete.



pause