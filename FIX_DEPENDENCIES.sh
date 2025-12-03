#!/bin/bash
# Fix for dependency issues (Altair, Streamlit, cache_resource, etc.)
# Run this if you get module errors or compatibility issues

echo "================================================"
echo "   Fixing Dependencies"
echo "================================================"
echo ""

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo "ERROR: Virtual environment not found!"
    echo "Please run START.sh first to create it."
    echo ""
    read -p "Press Enter to exit..."
    exit 1
fi

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

echo ""
echo "Uninstalling problematic packages..."
pip uninstall -y altair streamlit

echo ""
echo "Installing compatible versions..."
pip install altair==4.2.2
pip install streamlit>=1.30.0

echo ""
echo "================================================"
echo "   Fix Complete!"
echo "================================================"
echo ""
echo "Please try running START.sh again."
echo ""
read -p "Press Enter to exit..."
