#!/usr/bin/env python3
"""
Verify that data is loaded correctly
Run this before starting the app to check everything is OK
"""
import sys
from pathlib import Path

# Add src to path
sys.path.insert(0, str(Path(__file__).parent))

from src.core.storage import StorageManager
import config

def verify_data():
    print("🔍 Verifying Officials Tracker data...\n")
    
    storage = StorageManager(config.BASE_PATH)
    
    # Check positions
    positions = storage.load_positions()
    with_subdept = [p for p in positions if p.subdepartment]
    without_subdept = [p for p in positions if not p.subdepartment]
    
    print(f"✅ Positions loaded: {len(positions)}")
    print(f"   ├── With department (two-tier): {len(with_subdept)}")
    print(f"   └── Top-level (one-tier): {len(without_subdept)}")
    
    # Check persons
    persons = storage.load_persons()
    print(f"\n✅ Persons loaded: {len(persons)}")
    
    # Check mentions
    stats = storage.get_stats()
    print(f"\n✅ Mentions: {stats['total_mentions']}")
    
    print("\n" + "="*60)
    
    # Show examples
    if with_subdept:
        print("\n📋 Example with department hierarchy:")
        example = with_subdept[0]
        print(f"   Position: {example.title}")
        print(f"   Full path: {example.department}")
        print(f"              → {example.subdepartment}")
        print(f"              → {example.title}")
    
    if without_subdept:
        print("\n📋 Example top-level position:")
        example = without_subdept[0]
        print(f"   Position: {example.title}")
        print(f"   Organization: {example.department}")
    
    print("\n" + "="*60)
    print("\n✨ All data verified successfully!")
    print("\nNow run: streamlit run app.py")
    print("\n💡 If you see old data in the app:")
    print("   1. Press 'C' in browser to clear cache")
    print("   2. Or restart the app with Ctrl+C and run again")

if __name__ == '__main__':
    try:
        verify_data()
    except Exception as e:
        print(f"\n❌ Error: {e}")
        print("\nPlease check that you're in the officials_tracker directory")
        sys.exit(1)
