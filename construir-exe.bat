@echo off
color c
echo.
set /p a="Ponga el nombre del exe : "
if [%a%]==[] ( 
    CALL:error
    pause
    EXIT /B
) 
if [%a%] NEQ [] (
    CALL:main
    EXIT /B 1 
)
ECHO is on
:main
echo.
echo El nombre es: %a%
pyinstaller --clean --onefile --noconsole -i NONE -n %a% main.py
rmdir /s /q __pycache__
rmdir /s /q build
del /f / s /q %a%.spec
echo.
echo EXE Generado Como %a%.exe
EXIT /B 1 
ECHO is on
:error
echo.
echo A ver gilipollas, quieres poner un nombre
EXIT /B 1
