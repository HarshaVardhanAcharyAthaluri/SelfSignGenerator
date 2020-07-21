@echo off
call logo.bat

call :setESC
echo %ESC%[7m ---------------------------------------------------------------------------------------------- %ESC%[0m
echo %ESC%[7m                         COMMAND PROMPT MUST RUN AS ADMINITRATOR                                %ESC%[0m
echo %ESC%[7m                      Update localhost.cnf with HOSTNAME then ENTER                             %ESC%[0m
echo %ESC%[7m ---------------------------------------------------------------------------------------------- %ESC%[0m
set /p host="%ESC%[1m Waiting...%ESC%[0m"
set mypath=%cd%
set PATH=%mypath%\bin\

echo %ESC%[101;92m pass phrase is ADMIN %ESC%[0m

echo "*** CA Generating***"
call generateCA.bat
echo "*** Generate SelfSignCert***"
call generateselfsigncert.bat
echo "*** Signing Certificate"
call signCrt.bat
echo "*** PFX/CRT for windows server***"
call generatepfxcrt.bat

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0