@echo off
REM Fix for dependency issues (Altair, Streamlit, cache_resource, etc.)
REM Run this if you get module errors or compatibility issues

echo ================================================
echo    Fixing Dependencies
echo ================================================
echo.

REM Activate virtual environment if it exists
if exist "venv\Scripts\activate.bat" (
    echo Activating virtual environment...
    call venv\Scripts\activate.bat
) else (
    echo ERROR: Virtual environment not found!
    echo Please run START.bat first to create it.
    pause
    exit /b 1
)

echo.
echo Uninstalling problematic packages...
pip uninstall -y altair streamlit

echo.
echo Installing compatible versions...
pip install altair==4.2.2
pip install streamlit>=1.30.0

echo.
echo ================================================
echo    Fix Complete!
echo ================================================
echo.
echo Please try running START.bat again.
echo.
pause
