# 🔧 Troubleshooting: Seeing Old Data (161 positions)

## Problem

You downloaded the project, ran `streamlit run app.py`, but you see **161 positions** instead of **385 positions**.

## Why This Happens

**Streamlit caches data** for performance. When you run the app for the first time, it loads the data into cache. If you update the data files and run the app again, Streamlit may still show old cached data.

## Solution (3 Options)

### Option 1: Clear Cache in Browser (Easiest)

1. While the app is running in your browser
2. Press **`C`** key on your keyboard
3. Select **"Clear cache"** from the menu
4. The app will reload with fresh data

### Option 2: Restart the App

```bash
# Stop the app
# Press Ctrl+C in the terminal

# Start again
streamlit run app.py
```

### Option 3: Verify Data First

Before running the app, verify the data is correct:

```bash
python3 verify_data.py
```

You should see:
```
✅ Positions loaded: 385
   ├── With department (two-tier): 375
   └── Top-level (one-tier): 10
```

If you see `161 positions`, then the data files are old. Download the latest version.

---

## How to Verify You Have the Right Data

### Quick Check:

```bash
python3 -c "import json; data=json.load(open('data/positions/positions.json')); print(f'Positions: {len(data[\"positions\"])}')"
```

**Expected output:** `Positions: 385`

If you see `Positions: 161`, you have old data.

### Full Check:

```bash
python3 verify_data.py
```

---

## Still Having Issues?

### 1. Check you downloaded the latest version

Make sure you have the file **UPDATE_TWO_TIER_HIERARCHY.md** in the project folder. If not, you have an old version.

### 2. Delete Streamlit cache manually

```bash
# Remove cache directory
rm -rf ~/.streamlit/cache

# Or on Windows:
# del /s /q %USERPROFILE%\.streamlit\cache
```

### 3. Fresh install

```bash
# 1. Delete the old project folder
rm -rf officials_tracker

# 2. Extract the archive again
tar -xzf officials_tracker.tar.gz

# 3. Navigate to folder
cd officials_tracker

# 4. Verify data
python3 verify_data.py

# 5. Run app
streamlit run app.py

# 6. Press 'C' in browser to clear cache
```

---

## Quick Fix Command

Run this in the project folder:

```bash
python3 verify_data.py && echo "✅ Data is correct! Now run: streamlit run app.py" && echo "💡 Remember to press 'C' in browser to clear cache"
```

---

## Understanding the Data

After the update, the system now properly handles the two-tier hierarchy:

- **161 positions** = OLD (wrong structure)
- **385 positions** = NEW (correct structure)
  - 375 positions in departments
  - 10 top-level positions

Read **UPDATE_TWO_TIER_HIERARCHY.md** for details.

---

## Prevention

To avoid this in the future:

1. Always run `python3 verify_data.py` before starting the app
2. Press 'C' in browser after updating data
3. Or restart the app with Ctrl+C and run again

---

**Still stuck?** Check the main [README.md](README.md) → "Решение проблем" section.
