::echo off
if not exist %userprofile%\Documents\InstaCode mkdir %userprofile%\Documents\InstaCode
xcopy /s /y %CD%\..\InstaCode %userprofile%\Documents\InstaCode
cd %userprofile%\Documents\InstaCode

set vagrant=%CD%\msi\vagrant_1.5.1.msi
set vb=%CD%\msi\VirtualBox-4.3.10-r93012-MultiArch_amd64.msi
set brackets=%CD%\msi\brackets-sprint-37-WIN.msi

::install necessary programs
msiexec /qb /i %vagrant% /norestart
msiexec /qb /i %vb% /norestart
msiexec /qb /i %brackets% /norestart

:: copy brackets extensions into appropriate location
if not exist %userprofile%\AppData\Roaming\Brackets mkdir %userprofile%\AppData\Roaming\Brackets
if not exist %userprofile%\AppData\Roaming\Brackets\extensions mkdir %userprofile%\AppData\Roaming\Brackets\extensions
if not exist %userprofile%\AppData\Roaming\Brackets\extensions\user mkdir %userprofile%\AppData\Roaming\Brackets\extensions\user
xcopy /s /y %CD%\instacode-brackets-extensions %userprofile%\AppData\Roaming\Brackets\extensions\user
