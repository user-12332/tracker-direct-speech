#!/bin/bash
# Setup script for Google Drive deployment (Mac/Linux)
# Run this ONCE before uploading to Google Drive

echo "================================================"
echo "   Google Drive Setup"
echo "   Preparing project for cloud deployment"
echo "================================================"
echo ""

# Create .gitignore for version control (optional)
echo "Creating .gitignore..."
cat > .gitignore << 'EOF'
# Python
venv/
__pycache__/
*.pyc
*.pyo
*.pyd

# Streamlit
.streamlit/

# Locks
locks/

# OS
.DS_Store
Thumbs.db
desktop.ini

# Google Drive
.tmp.driveupload/
*.tmp
EOF

# Create README for what NOT to sync
echo "Creating GOOGLE_DRIVE_DO_NOT_SYNC.txt..."
cat > GOOGLE_DRIVE_DO_NOT_SYNC.txt << 'EOF'
================================================
  IMPORTANT: Do NOT sync these folders/files
================================================

The following should NOT be synced to Google Drive:

1. venv/           - Python virtual environment
                     (Each user creates their own)

2. __pycache__/    - Python cache files
                     (Automatically generated)

3. locks/          - File lock files
                     (Temporary, per-session)

4. *.pyc           - Compiled Python files

================================================
  What SHOULD be synced:
================================================

- All .py files
- data/ folder (this is important!)
- src/ folder
- scripts/ folder
- All .md documentation files
- requirements.txt
- config.py
- START.sh (for Mac/Linux)
- START.bat (for Windows)

================================================
  Setup Instructions:
================================================

BEFORE uploading to Google Drive:

1. Delete venv folder if it exists
2. Delete __pycache__ folders if they exist
3. Delete locks folder if it exists

Each user will create their own venv when they
run START.sh (Mac/Linux) or START.bat (Windows) 
for the first time.

EOF

# Clean up folders that shouldn't be synced
echo ""
echo "Cleaning up local-only folders..."

if [ -d "venv" ]; then
    echo "Removing venv folder..."
    rm -rf venv
    echo "  Done"
fi

if [ -d "__pycache__" ]; then
    echo "Removing __pycache__ folder..."
    rm -rf __pycache__
    echo "  Done"
fi

if [ -d "locks" ]; then
    echo "Removing locks folder..."
    rm -rf locks
    echo "  Done"
fi

# Clean up .pyc files
echo "Removing .pyc files..."
find . -name "*.pyc" -delete
echo "  Done"

echo ""
echo "================================================"
echo "   Setup Complete!"
echo "================================================"
echo ""
echo "Your project is now ready to upload to Google Drive."
echo ""
echo "Next steps:"
echo ""
echo "1. Upload this entire folder to Google Drive"
echo "2. Share with your coworker (Editor access)"
echo "3. Both of you: Sync the folder to your computers"
echo "4. Mac/Linux users: Run ./START.sh"
echo "   Windows users: Run START.bat"
echo "   (First run will create venv automatically)"
echo ""
echo "See GOOGLE_DRIVE_COLLABORATION.md for detailed instructions."
echo ""
read -p "Press Enter to exit..."
