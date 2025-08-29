#!/bin/bash

# ===============================
# Flutter + Android SDK Setup Script
# Works for Kali Linux / Debian-based systems
# Author: Istiaq Alam
# ===============================

LOG_FILE="$HOME/flutter_android_setup_log.txt"
FLUTTER_DIR="$HOME/development/flutter"
ANDROID_SDK_DIR="$HOME/Android/Sdk"
CMDLINE_URL="https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip"

echo ">>> Flutter + Android SDK Setup Started" | tee $LOG_FILE
date | tee -a $LOG_FILE

# -----------------------------------
# Step 1: Add Flutter to PATH
# -----------------------------------
if [ -d "$FLUTTER_DIR" ]; then
  echo "Adding Flutter to PATH..." | tee -a $LOG_FILE
  grep -qxF "export PATH=\$PATH:$FLUTTER_DIR/bin" ~/.bashrc || echo "export PATH=\$PATH:$FLUTTER_DIR/bin" >> ~/.bashrc
  export PATH=$PATH:$FLUTTER_DIR/bin
else
  echo "Flutter SDK not found in $FLUTTER_DIR! Please extract it first." | tee -a $LOG_FILE
fi

# -----------------------------------
# Step 2: Install Android command-line tools
# -----------------------------------
echo "Setting up Android SDK..." | tee -a $LOG_FILE
mkdir -p $ANDROID_SDK_DIR/cmdline-tools
cd $ANDROID_SDK_DIR/cmdline-tools

if [ ! -f "cmdline-tools.zip" ]; then
  echo "Downloading Android cmdline-tools..." | tee -a $LOG_FILE
  wget -q $CMDLINE_URL -O cmdline-tools.zip
fi

unzip -qo cmdline-tools.zip
rm -rf latest
mv cmdline-tools latest

# Add Android SDK env vars
grep -qxF "export ANDROID_SDK_ROOT=$ANDROID_SDK_DIR" ~/.bashrc || echo "export ANDROID_SDK_ROOT=$ANDROID_SDK_DIR" >> ~/.bashrc
grep -qxF "export PATH=\$PATH:\$ANDROID_SDK_ROOT/cmdline-tools/latest/bin" ~/.bashrc || echo "export PATH=\$PATH:\$ANDROID_SDK_ROOT/cmdline-tools/latest/bin" >> ~/.bashrc
grep -qxF "export PATH=\$PATH:\$ANDROID_SDK_ROOT/platform-tools" ~/.bashrc || echo "export PATH=\$PATH:\$ANDROID_SDK_ROOT/platform-tools" >> ~/.bashrc

export ANDROID_SDK_ROOT=$ANDROID_SDK_DIR
export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools

# -----------------------------------
# Step 3: Install SDK components
# -----------------------------------
echo "Installing Android SDK components..." | tee -a $LOG_FILE
yes | sdkmanager --install "platform-tools" "platforms;android-34" "build-tools;34.0.0" >> $LOG_FILE 2>&1

# -----------------------------------
# Step 4: Accept licenses
# -----------------------------------
echo "Accepting Android licenses..." | tee -a $LOG_FILE
yes | flutter doctor --android-licenses >> $LOG_FILE 2>&1

# -----------------------------------
# Step 5: Install Linux dependencies
# -----------------------------------
echo "Installing Linux toolchain dependencies..." | tee -a $LOG_FILE
sudo apt update -y >> $LOG_FILE 2>&1
sudo apt install -y cmake ninja-build libgtk-3-dev unzip wget >> $LOG_FILE 2>&1

# -----------------------------------
# Step 6: Final Check
# -----------------------------------
echo "Running flutter doctor..." | tee -a $LOG_FILE
flutter doctor -v | tee -a $LOG_FILE

echo ">>> Setup Complete! Please restart your terminal or run: source ~/.bashrc" | tee -a $LOG_FILE
