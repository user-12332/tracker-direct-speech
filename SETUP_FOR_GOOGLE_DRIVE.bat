@echo off
REM Setup script for Google Drive deployment
REM Run this ONCE before uploading to Google Drive

echo ================================================
echo    Google Drive Setup
echo    Preparing project for cloud deployment
echo ================================================
echo.

REM Create .gitignore for version control (optional)
echo Creating .gitignore...
(
echo # Python
echo venv/
echo __pycache__/
echo *.pyc
echo *.pyo
echo *.pyd
echo.
echo # Streamlit
echo .streamlit/
echo.
echo # Locks
echo locks/
echo.
echo # OS
echo .DS_Store
echo Thumbs.db
echo desktop.ini
echo.
echo # Google Drive
echo .tmp.driveupload/
echo *.tmp
) > .gitignore

REM Create README for what NOT to sync
echo Creating GOOGLE_DRIVE_DO_NOT_SYNC.txt...
(
echo ================================================
echo   IMPORTANT: Do NOT sync these folders/files
echo ================================================
echo.
echo The following should NOT be synced to Google Drive:
echo.
echo 1. venv/           - Python virtual environment
echo                      ^(Each user creates their own^)
echo.
echo 2. __pycache__/    - Python cache files
echo                      ^(Automatically generated^)
echo.
echo 3. locks/          - File lock files
echo                      ^(Temporary, per-session^)
echo.
echo 4. *.pyc           - Compiled Python files
echo.
echo ================================================
echo   What SHOULD be synced:
echo ================================================
echo.
echo - All .py files
echo - data/ folder ^(this is important!^)
echo - src/ folder
echo - scripts/ folder
echo - All .md documentation files
echo - requirements.txt
echo - config.py
echo - START.bat
echo.
echo ================================================
echo   Setup Instructions:
echo ================================================
echo.
echo BEFORE uploading to Google Drive:
echo.
echo 1. Delete venv folder if it exists
echo 2. Delete __pycache__ folders if they exist
echo 3. Delete locks folder if it exists
echo.
echo Each user will create their own venv when they
echo run START.bat for the first time.
echo.
) > GOOGLE_DRIVE_DO_NOT_SYNC.txt

REM Clean up folders that shouldn't be synced
echo.
echo Cleaning up local-only folders...

if exist "venv" (
    echo Removing venv folder...
    rmdir /s /q venv
    echo   Done
)

if exist "__pycache__" (
    echo Removing __pycache__ folder...
    rmdir /s /q __pycache__
    echo   Done
)

if exist "locks" (
    echo Removing locks folder...
    rmdir /s /q locks
    echo   Done
)

REM Clean up .pyc files
echo Removing .pyc files...
del /s /q *.pyc 2>nul
echo   Done

echo.
echo ================================================
echo   Setup Complete!
echo ================================================
echo.
echo Your project is now ready to upload to Google Drive.
echo.
echo Next steps:
echo.
echo 1. Upload this entire folder to Google Drive
echo 2. Share with your coworker ^(Editor access^)
echo 3. Both of you: Sync the folder to your computers
echo 4. Both of you: Run START.bat
echo    ^(First run will create venv automatically^)
echo.
echo See GOOGLE_DRIVE_COLLABORATION.md for detailed instructions.
echo.
pause
