@echo off
"%~dp0..\gawk-3.1.6-1-bin\bin\gawk.exe" -f "%~dp0check-seg-size.awk" %*
