# 🖥️ Cross-Platform Guide - Windows, Mac & Linux

**Officials Tracker works on all platforms!**

---

## 🎯 Which Files to Use

### Windows Users:
- ✅ `START.bat`
- ✅ `FIX_DEPENDENCIES.bat`
- ✅ `SETUP_FOR_GOOGLE_DRIVE.bat`

### Mac/Linux Users:
- ✅ `START.sh`
- ✅ `FIX_DEPENDENCIES.sh`
- ✅ `SETUP_FOR_GOOGLE_DRIVE.sh`

---

## 🚀 Quick Start by Platform

### Windows:

**Double-click:**
```
START.bat
```

Or in PowerShell:
```powershell
.\START.bat
```

### Mac:

**In Terminal:**
```bash
chmod +x START.sh
./START.sh
```

### Linux:

**In Terminal:**
```bash
chmod +x START.sh
./START.sh
```

---

## 📁 Project Structure

```
officials_tracker/
├── START.bat               ← Windows
├── START.sh                ← Mac/Linux
├── FIX_DEPENDENCIES.bat    ← Windows
├── FIX_DEPENDENCIES.sh     ← Mac/Linux
├── SETUP_FOR_GOOGLE_DRIVE.bat   ← Windows
├── SETUP_FOR_GOOGLE_DRIVE.sh    ← Mac/Linux
├── app.py                  ← Same for all
├── config.py               ← Same for all
├── requirements.txt        ← Same for all
├── data/                   ← Same for all
└── src/                    ← Same for all
```

**Key point:** Only the launcher scripts differ. All data and code is identical!

---

## 👥 Mixed Teams

### If Your Team Has Both Windows and Mac Users:

**✅ No problem!**

**Example:**
- You: Windows → Use `START.bat`
- Coworker: Mac → Uses `START.sh`
- **Same Google Drive folder**
- **Same data**
- Everything syncs perfectly! ✅

---

## 🔧 Fixing Errors

### Windows:
```
FIX_DEPENDENCIES.bat
```

### Mac/Linux:
```bash
./FIX_DEPENDENCIES.sh
```

Both do the same thing:
- Uninstall problematic packages
- Install correct versions
- Fix compatibility issues

---

## 📦 Google Drive Setup

### Windows:

**Prepare:**
```
SETUP_FOR_GOOGLE_DRIVE.bat
```

**Typical path:**
```
G:\My Drive\OfficialTracker\
```

### Mac:

**Prepare:**
```bash
./SETUP_FOR_GOOGLE_DRIVE.sh
```

**Typical paths:**
```
~/Library/CloudStorage/GoogleDrive-email@gmail.com/My Drive/OfficialTracker/
```
or
```
~/Google Drive/My Drive/OfficialTracker/
```

### Linux:

**Prepare:**
```bash
./SETUP_FOR_GOOGLE_DRIVE.sh
```

**Typical path:**
```
~/GoogleDrive/OfficialTracker/
```

---

## 🐍 Python Installation

### Windows:

**Download:** https://www.python.org/downloads/

**Important:** Check "Add Python to PATH" during installation!

### Mac:

**Option 1: Homebrew (recommended)**
```bash
brew install python3
```

**Option 2: Official installer**
https://www.python.org/downloads/

### Linux:

**Ubuntu/Debian:**
```bash
sudo apt update
sudo apt install python3 python3-pip python3-venv
```

**Fedora:**
```bash
sudo dnf install python3 python3-pip
```

**Arch:**
```bash
sudo pacman -S python python-pip
```

---

## 🔍 Checking Installation

### All Platforms:

**Windows:**
```powershell
python --version
```

**Mac/Linux:**
```bash
python3 --version
```

**Should see:**
```
Python 3.9.0 (or higher)
```

---

## 📍 Common Paths by Platform

### Windows:

**Project location:**
```
C:\Users\YourName\Documents\officials_tracker\
```

**Google Drive:**
```
G:\My Drive\OfficialTracker\
```

**Virtual environment:**
```
venv\Scripts\activate.bat
```

### Mac:

**Project location:**
```
/Users/YourName/Documents/officials_tracker/
```

**Google Drive:**
```
~/Library/CloudStorage/GoogleDrive-.../My Drive/OfficialTracker/
```

**Virtual environment:**
```
source venv/bin/activate
```

### Linux:

**Project location:**
```
/home/yourname/officials_tracker/
```

**Google Drive:**
```
~/GoogleDrive/OfficialTracker/
```

**Virtual environment:**
```
source venv/bin/activate
```

---

## 🌐 Browser Support

**All platforms:**
- ✅ Chrome
- ✅ Firefox
- ✅ Safari (Mac)
- ✅ Edge (Windows)

**Default URL:**
```
http://localhost:8501
```

---

## ⚠️ Platform-Specific Notes

### Windows:

- Antivirus might block first run → Allow access
- Windows Defender might scan venv folder → Normal
- PowerShell execution policy might block scripts → Run `Set-ExecutionPolicy -Scope CurrentUser RemoteSigned`

### Mac:

- Gatekeeper might block scripts → Run `chmod +x START.sh` first
- Python 2 vs Python 3 → Always use `python3`
- Google Drive path varies by account type

### Linux:

- May need to install `python3-venv` separately
- Some distros need `python3-pip` package
- Google Drive Desktop not available → Use `rclone` or similar

---

## 🔄 Syncing Between Platforms

**What syncs:**
- ✅ All `.py` files
- ✅ All data files (`data/` folder)
- ✅ All documentation
- ✅ `requirements.txt`
- ✅ Both `.bat` and `.sh` files

**What doesn't sync:**
- ❌ `venv/` folder (each user creates their own)
- ❌ `__pycache__/`
- ❌ `locks/`

**Result:** Windows and Mac users can work on same project seamlessly!

---

## 📚 Documentation

**Cross-platform guides:**
- `README.md` - Works for all platforms
- `GOOGLE_DRIVE_COLLABORATION.md` - Works for all platforms
- `FOR_COWORKERS.md` - Works for all platforms
- `FIX_MODULE_ERRORS.md` - Works for all platforms

**Platform-specific:**
- `MAC_LINUX_GUIDE.md` - Mac/Linux users
- This file - Overview for all

---

## ✅ Checklist by Platform

### Windows User:
- [ ] Python installed (with PATH)
- [ ] Downloaded project
- [ ] Run `START.bat`
- [ ] Application opens in browser
- [ ] Can add mentions

### Mac User:
- [ ] Python 3 installed (`python3 --version`)
- [ ] Downloaded project
- [ ] Run `chmod +x START.sh`
- [ ] Run `./START.sh`
- [ ] Application opens in browser
- [ ] Can add mentions

### Linux User:
- [ ] Python 3 and venv installed
- [ ] Downloaded project
- [ ] Run `chmod +x START.sh`
- [ ] Run `./START.sh`
- [ ] Application opens in browser
- [ ] Can add mentions

---

## 🎉 Mixed Team Success Story

**Example setup:**

**User 1 (Windows):**
```
Location: C:\Officials\
Google Drive: G:\My Drive\OfficialTracker\
Runs: START.bat
```

**User 2 (Mac):**
```
Location: ~/Documents/officials_tracker/
Google Drive: ~/Google Drive/My Drive/OfficialTracker/
Runs: ./START.sh
```

**Both:**
- See same data
- Add mentions
- Changes sync automatically
- Work on same project
- Everything works! ✅

---

## 🆘 Getting Help

**All platforms:**
1. Check `FIX_MODULE_ERRORS.md`
2. Delete `venv` folder
3. Run start script again
4. Contact team admin

**Platform-specific:**
- Windows: Check Windows Defender/Antivirus
- Mac: Check file permissions (`chmod +x`)
- Linux: Check Python packages installed

---

**Cross-Platform:** ✅ Fully Supported  
**Windows:** ✅ Ready  
**Mac:** ✅ Ready  
**Linux:** ✅ Ready  
**Google Drive:** ✅ Works on all platforms
