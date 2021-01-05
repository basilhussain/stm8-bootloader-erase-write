@echo off

rem Add location of Make to PATH environment var
set PATH=C:\Program Files\Mingw-W64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin;%PATH%

rem Add location of SDCC to PATH environment var
rem *** Uncomment the line below if SDCC not already in PATH by default ***
rem set PATH=C:\Program Files\SDCC\bin;%PATH%

rem Add location of Awk to PATH environment var
set PATH=%~dp0..\tools\gawk-3.1.6-1-bin\bin;%PATH%

rem Add location of XXD to PATH environment var
set PATH=%~dp0..\tools;%PATH%

rem Change to directory this batch file resides in
cd "%~dp0"

rem Open a new command prompt (inherits this environment)
%ComSpec%
