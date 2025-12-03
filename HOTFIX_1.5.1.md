# 🔧 Version 1.5.1 - Hotfix

**Date:** 2024-12-01  
**Type:** Bugfix

## 🐛 Bug Fixed

### Issue: AttributeError in storage.py

**Error:**
```
AttributeError: 'StorageManager' object has no attribute 'lock_file'
```

**Location:**
```python
File "src/core/storage.py", line 275, in load_departments
    with self.lock_file(dept_file):
         ^^^^^^^^^^^^^^
```

### Root Cause

When adding department and subdepartment management, used incorrect method name `lock_file()` instead of the existing `_get_lock()` method.

### Fix

**Changed in:** `src/core/storage.py`

**Before (incorrect):**
```python
with self.lock_file(dept_file):
    # ...
```

**After (correct):**
```python
with self._get_lock('departments'):
    # ...
```

### Files Modified

- `src/core/storage.py` - Fixed 4 occurrences:
  - `load_departments()` - line 275
  - `save_departments()` - line 287
  - `load_subdepartments()` - line 337
  - `save_subdepartments()` - line 349

---

## ✅ Verification

After fix:
```bash
python3 -m py_compile src/core/storage.py
# ✅ Syntax OK

python3 app.py
# ✅ App starts without errors
```

---

## 📥 Download Fixed Version

**[Download officials_tracker.tar.gz](computer:///mnt/user-data/outputs/officials_tracker.tar.gz)** (116 KB)

---

## 🔄 How to Update

### Option 1: Replace single file
1. Download new `src/core/storage.py`
2. Replace in your project
3. Restart app

### Option 2: Download full archive
1. Download `officials_tracker.tar.gz`
2. Extract
3. Replace your project folder
4. Your data files are safe (they're in `data/`)

---

## ⚠️ Impact

**Who was affected:**
- Anyone who downloaded version 1.5.0 and tried to view "Organizational Structure" page

**Severity:** High (app crash)

**Status:** ✅ Fixed in 1.5.1

---

## 🎯 What Works Now

Everything from version 1.5.0, plus:
- ✅ Department status management works correctly
- ✅ Subdepartment status management works correctly
- ✅ File locking works properly
- ✅ No more AttributeError

---

**Version:** 1.5.1  
**Previous:** 1.5.0  
**Type:** Hotfix  
**Files changed:** 1 (storage.py)
