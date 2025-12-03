# 🔧 Version 1.5.2 - CSV Filename Update

**Date:** 2024-12-01  
**Type:** Minor update

## 📝 What Changed

### Default CSV filename updated

**Before:**
```python
csv_path = 'Ведомства__корпорации__-_ведомства.csv'
```

**Now:**
```python
csv_path = 'list_officials.csv'
```

---

## ✅ Impact

### Now you can run import without arguments:

```powershell
# Just place list_officials.csv in the project folder
python scripts/import_from_csv.py

# Will automatically find and import list_officials.csv
```

### Still works with custom filename:

```powershell
python scripts/import_from_csv.py custom_name.csv
python scripts/import_from_csv.py C:\path\to\file.csv
```

---

## 📥 Download

**[Download officials_tracker.tar.gz](computer:///mnt/user-data/outputs/officials_tracker.tar.gz)** (117 KB)

---

## 🔄 Changes Made

**Files updated:**
1. `scripts/import_from_csv.py` - Default filename changed
2. `UPDATE_FROM_CSV.md` - Documentation updated

---

**Version:** 1.5.2  
**Previous:** 1.5.1  
**Type:** Minor update
