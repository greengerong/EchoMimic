@echo off
chcp 65001

REM check env
if exist myenv (
    echo skip myenv
) else (
    REM create myenv
    python -m venv myenv
)

REM activate myenv
call .\myenv\Scripts\activate

REM install requirements
call .\myenv\Scripts\pip.exe install -r .\requirements.txt

REM run app
call .\myenv\Scripts\python.exe -u .\app.py

pause
