# 🔄 How to Update Data from New CSV

## Quick Update (3 steps)

### Step 1: Place the new CSV file

Put your new CSV file `list_officials.csv` in the project folder:

```
officials_tracker/
├── list_officials.csv  ← Here
├── data/
├── scripts/
└── app.py
```

### Step 2: Run the import script

**Windows (PowerShell):**
```powershell
python scripts/import_from_csv.py list_officials.csv
```

**Mac/Linux:**
```bash
python3 scripts/import_from_csv.py list_officials.csv
```

You should see:
```
✅ Import complete!
   Positions: 386
   Persons: 628
```

### Step 3: Restart the app

```powershell
# Stop the app: Ctrl+C

# Clear old mentions (optional - only if you want fresh start)
# rm -rf data/mentions/*

# Start the app
streamlit run app.py

# In browser: Press 'C' to clear cache
```

---

## What Gets Updated

✅ **Positions** - `data/positions/positions.json`
✅ **Persons** - `data/persons/persons.json`
❌ **Mentions** - NOT affected (your existing mentions are safe)

---

## Alternative: Specify CSV path

If your CSV is in a different location:

```powershell
# Windows
python scripts/import_from_csv.py "C:\Downloads\list_officials.csv"

# Mac/Linux
python3 scripts/import_from_csv.py ~/Downloads/list_officials.csv
```

---

## Verify the Update

After import, verify:

```powershell
python verify_data.py
```

Should show:
```
✅ Positions loaded: 386
✅ Persons loaded: 628
```

---

## Files You Need to Update

**Minimal replacement (3 files):**

1. `scripts/import_from_csv.py` - new import script
2. `data/positions/positions.json` - will be regenerated
3. `data/persons/persons.json` - will be regenerated

**Or just:**
- Download the new `import_from_csv.py` script
- Run it with your new CSV
- Done!

---

## Comparison: CSV vs Excel Import

| Feature | Excel Import | CSV Import |
|---------|-------------|------------|
| Script | `import_from_excel.py` | `import_from_csv.py` |
| Speed | Slower | Faster |
| Dependencies | openpyxl | pandas only |
| Encoding | Auto | UTF-8 |

Both produce the same JSON output!

---

## Troubleshooting

### "Module 'pandas' not found"
```powershell
pip install pandas
```

### "File not found"
Make sure the CSV filename is exact: `list_officials.csv`

### Wrong number of positions
- Check the CSV file structure
- Should have 6 columns: Ведомство, Департамент, Должность, Имя, Начало работы, Конец работы
- First row should be the header

### Mentions disappeared
Mentions are stored separately in `data/mentions/` and won't be affected by reimport.

---

## Backup Before Update (Recommended)

```powershell
# Backup current data
cp -r data data_backup_$(date +%Y%m%d)

# Or on Windows:
xcopy /E /I data data_backup
```

Then you can always restore if needed.

---

## Done!

After these 3 steps, your data is updated. All your existing mentions remain intact.
