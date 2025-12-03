# 🔧 FIX: ModuleNotFoundError: No module named 'altair.vegalite.v4'

**Error you're seeing:**
```
ModuleNotFoundError: No module named 'altair.vegalite.v4'
```

---

## ⚡ Quick Fix (2 minutes)

### Option 1: Run the fix script (EASIEST)

**Just double-click this file:**
```
FIX_ALTAIR_ERROR.bat
```

**What it does:**
1. Uninstalls problematic versions of Altair and Streamlit
2. Installs compatible versions
3. Done!

**Then:**
- Run `START.bat` again
- Should work now! ✅

---

### Option 2: Manual fix (if Option 1 doesn't work)

**Step 1: Delete the virtual environment**

```powershell
# Close the application if running (Ctrl+C)
# Then delete venv folder
rmdir /s /q venv
```

**Step 2: Run START.bat again**

```
START.bat
```

This will:
- Create fresh virtual environment
- Install correct versions
- Start the application

---

### Option 3: Fix in command line (for advanced users)

```powershell
# Activate virtual environment
.\venv\Scripts\activate

# Uninstall problematic packages
pip uninstall -y altair streamlit

# Install specific compatible versions
pip install altair==4.2.2
pip install streamlit>=1.28.0

# Run application
streamlit run app.py
```

---

## 🤔 Why This Happens

**Reason:** Streamlit 1.28+ needs Altair 4.x, but sometimes pip installs Altair 5.x which uses different internal structure.

**The fix:** Force installation of Altair 4.2.2 which is compatible with Streamlit.

---

## ✅ How to Know It's Fixed

When you run `START.bat`, you should see:

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

And the browser should open with the application! 🎉

---

## 🆘 Still Not Working?

### Check Python version:

```powershell
python --version
```

**Should be:** Python 3.8 or higher

If lower, update Python from https://www.python.org/downloads/

### Check if packages installed correctly:

```powershell
.\venv\Scripts\activate
pip list | findstr altair
pip list | findstr streamlit
```

**Should see:**
```
altair          4.2.2
streamlit       1.28.0 (or higher)
```

### Nuclear option - Fresh install:

```powershell
# 1. Delete everything Python-related
rmdir /s /q venv
del /q *.pyc

# 2. Create fresh environment
python -m venv venv

# 3. Activate
.\venv\Scripts\activate

# 4. Install packages one by one
pip install altair==4.2.2
pip install streamlit==1.28.0
pip install pandas>=2.0.0
pip install openpyxl>=3.1.0
pip install filelock>=3.12.0

# 5. Run
streamlit run app.py
```

---

## 📝 Updated requirements.txt

The `requirements.txt` has been updated to prevent this issue:

```
streamlit>=1.28.0
pandas>=2.0.0
openpyxl>=3.1.0
filelock>=3.12.0
altair<5              ← NEW! Forces Altair 4.x
```

This ensures compatible versions are installed from the start.

---

## 💡 Prevention for Future

**When creating fresh environment:**

```powershell
# Always install in this order:
pip install altair==4.2.2
pip install streamlit>=1.28.0
pip install -r requirements.txt
```

This ensures correct Altair version is locked in first.

---

## ✅ Summary

**If you see Altair error:**

1. **Easiest:** Double-click `FIX_ALTAIR_ERROR.bat`
2. **If that fails:** Delete `venv` folder, run `START.bat`
3. **If still fails:** Contact admin (project owner)

**After fix:**
- Run `START.bat`
- Application should open
- You can start working! 🎉

---

## 🎯 For Administrator

**If coworker reports this issue:**

1. Send them this file (FIX_ALTAIR_ERROR.md)
2. Ask them to run `FIX_ALTAIR_ERROR.bat`
3. If still broken, walk them through Option 2 (delete venv)

**To prevent in future:**
- The updated `requirements.txt` should prevent this
- But if issue persists, add this to START.bat:
  ```batch
  pip install altair==4.2.2 --force-reinstall
  ```

---

**Version:** 1.7.2  
**Issue:** Altair compatibility  
**Status:** ✅ Fixed  
**Time to fix:** 2 minutes
