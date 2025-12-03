# 🍎 Mac/Linux Quick Start Guide

**For Mac and Linux users**

---

## 🚀 How to Run (Mac/Linux)

### First Time Setup

**Step 1: Open Terminal**
```bash
# Navigate to project folder
cd /path/to/officials_tracker

# Make scripts executable (one time only)
chmod +x START.sh
chmod +x FIX_DEPENDENCIES.sh
chmod +x SETUP_FOR_GOOGLE_DRIVE.sh
```

**Step 2: Run the application**
```bash
./START.sh
```

That's it! The application will open in your browser.

---

## 📁 File Structure

**For Mac/Linux users:**
```
officials_tracker/
├── START.sh                    ← Run this! (Mac/Linux)
├── START.bat                   ← For Windows users
├── FIX_DEPENDENCIES.sh         ← Fix script (Mac/Linux)
├── FIX_DEPENDENCIES.bat        ← For Windows users
└── ...
```

---

## 🔧 If You Get Module Errors

### Fix for Mac/Linux:

```bash
# Run the fix script
./FIX_DEPENDENCIES.sh

# Then run the app
./START.sh
```

### Or delete and recreate venv:

```bash
# Delete virtual environment
rm -rf venv

# Run START.sh (creates fresh venv)
./START.sh
```

---

## 📦 Google Drive Setup (Mac/Linux)

### Prepare for upload:

```bash
./SETUP_FOR_GOOGLE_DRIVE.sh
```

Then upload to Google Drive and share with coworker.

---

## 💡 Common Mac Issues

### Issue: "Permission denied"

**Solution:**
```bash
chmod +x START.sh
./START.sh
```

### Issue: "python3: command not found"

**Solution:** Install Python
```bash
# Using Homebrew (recommended)
brew install python3

# Or download from
# https://www.python.org/downloads/
```

### Issue: "pip: command not found"

**Solution:**
```bash
python3 -m ensurepip --upgrade
```

---

## 🪟 Cross-Platform Team

**If you (Mac) work with Windows user:**

**You use:**
- `START.sh`
- `FIX_DEPENDENCIES.sh`
- `SETUP_FOR_GOOGLE_DRIVE.sh`

**They use:**
- `START.bat`
- `FIX_DEPENDENCIES.bat`
- `SETUP_FOR_GOOGLE_DRIVE.bat`

**Both work on the same data in Google Drive!** ✅

---

## ⚡ Quick Commands

**Start app:**
```bash
./START.sh
```

**Fix dependencies:**
```bash
./FIX_DEPENDENCIES.sh
```

**Prepare for Google Drive:**
```bash
./SETUP_FOR_GOOGLE_DRIVE.sh
```

**Stop app:**
```
Ctrl+C in Terminal
```

---

## 📍 Typical Paths

**Google Drive on Mac:**
```bash
cd ~/Library/CloudStorage/GoogleDrive-youremail@gmail.com/My\ Drive/OfficialTracker
./START.sh
```

Or:
```bash
cd ~/Google\ Drive/My\ Drive/OfficialTracker
./START.sh
```

---

## ✅ Everything Working?

You should see:
```
================================================
   Officials Tracker
   Starting application...
================================================

Checking dependencies...
Starting Officials Tracker...

You can now view your Streamlit app in your browser.

Local URL: http://localhost:8501
```

**Browser opens automatically!** 🎉

---

## 📖 Full Documentation

All documentation works for both Mac and Windows:
- `README.md`
- `GOOGLE_DRIVE_COLLABORATION.md`
- `FOR_COWORKERS.md`
- `FIX_MODULE_ERRORS.md`

Just use `.sh` files instead of `.bat` files!

---

**Mac/Linux Support:** ✅ Full  
**Cross-platform:** ✅ Works with Windows users  
**Google Drive:** ✅ Supported
