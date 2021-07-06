@echo off

if [%1] == [] goto help

REM This allows us to expand variables at execution
setlocal ENABLEDELAYEDEXPANSION

goto %1

:reformat
isort .
black .
exit /B %ERRORLEVEL%

:help
echo Usage:
echo   make ^<command^>
echo.
echo Commands:
echo   reformat                   Reformat all .py files being tracked by git.
