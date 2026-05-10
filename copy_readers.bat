@echo off
setlocal

set "OUTDIR=%~dp0readers"
if not exist "%OUTDIR%" mkdir "%OUTDIR%"

for /d %%D in ("%~dp0*_reader") do (
    if exist "%%~fD\main.pdf" (
        echo Copying %%~nxD\main.pdf to readers\%%~nxD.pdf
        copy /Y "%%~fD\main.pdf" "%OUTDIR%\%%~nxD.pdf" >nul
    ) else (
        echo Skipping %%~nxD: main.pdf not found
    )
)

echo Done.
