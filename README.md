# Automate **Flutter + Android Studio SDK setup** in Kali Linux using a shell script.
---
The script will:
* Add **Flutter** to `PATH`
* Install **Android SDK command-line tools**
* Set **ANDROID\_SDK\_ROOT**
* Install essential **SDK components**
* Accept **licenses**
* Install missing Linux dependencies (CMake, Ninja, GTK)
* Save all outputs to a log file (`setup_log.txt`)

Here’s the script named `Flutter_Setup.sh`

## 🔧 Usage:

1. Save as `setup_flutter.sh`

   ```bash
   nano setup_flutter.sh
   ```

   (Paste the script, then save)

2. Make executable:

   ```bash
   chmod +x setup_flutter.sh
   ```

3. Run:

   ```bash
   ./setup_flutter.sh
   ```

4. Check log:

   ```bash
   cat ~/flutter_android_setup_log.txt
   ```

---

⚠️ This script assumes:

* You already extracted Flutter SDK in `/home/development/flutter`
* You installed **Android Studio** (via Flatpak or tar.gz)
* It focuses on **SDK + Flutter toolchain**, not GUI installation

---

⚠️ Also This will **link Flatpak Android Studio** to Flutter if installed.
If you later install the **tar.gz version** of Android Studio (recommended), you can re-run:

```bash
flutter config --android-studio-dir=/opt/android-studio
```

