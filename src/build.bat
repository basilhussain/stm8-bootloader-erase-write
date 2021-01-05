@echo off

rem change to current working directory
cd "%~dp0"

rem run makefile
mingw32-make -f Makefile
