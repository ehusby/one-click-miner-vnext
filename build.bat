@ECHO OFF
SET ver=%1
git describe --always --long --dirty > %TEMP%\git-version
SET /p gitver=<%TEMP%\git-version
DEL %TEMP%\git-version
CD tracking
REN version.go version.go.build
ECHO package tracking >> version.go
ECHO var version="%ver%-%gitver%" >> version.go
CD ..
DEL build\vertcoin-ocm.exe
wails build
ECHO "Sign the release assembly now on the windows machine if desired, then:"
PAUSE
CD build
COPY vertcoin-ocm.exe ..\vertcoin-ocm-%ver%-windows-x64.exe
7z a ../vertcoin-ocm-%ver%-windows-x64.zip vertcoin-ocm.exe
CD ..
wails build -d
ECHO "Sign the debug assembly now on the windows machine if desired, then:"
PAUSE
CD build
COPY vertcoin-ocm.exe ..\vertcoin-ocm-%ver%-windows-x64-debug.exe
7z a ../vertcoin-ocm-%ver%-windows-x64-debug.zip vertcoin-ocm.exe
CD ../tracking
DEL version.go
REN version.go.build version.go
CD ..