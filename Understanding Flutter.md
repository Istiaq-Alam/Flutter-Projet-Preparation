# 📚 Part 1: Understand Flutter

Flutter is:

* **UI SDK** by Google → write once, run on Android, iOS, Web, Desktop.
* Uses **Dart** language (easy if you know Java, C#, JS).
* Based on **widgets** → everything (button, text, layout, even the app itself) is a widget.

👉 Think of Flutter like **Lego blocks** → you combine widgets to build apps.

---

# 🛠️ Part 2: Set Up Your First Flutter Project

Open **Android Studio** →

1. `New Flutter Project` → `Flutter Application`
2. Configure:

   * Project name: `my_first_app`
   * Flutter SDK path: `/home/development/flutter`
   * Package name: `com.example.myfirstapp`
   * Save Location: anywhere you like
   * Click **Finish**

Android Studio will generate a default **Counter App** → your first runnable Flutter project.

---

# 🏃 Part 3: Run Your App

Choose a device:

* **Android Emulator**: Setup via Android Studio → AVD Manager
* **Real Device**: Enable **USB Debugging** on your phone

Then hit ▶ **Run** → you’ll see a default app with a counter that increases on button press. 🎉

---

# 👨‍💻 Part 4: Your First Custom Flutter App

Let’s create a **Hello World app**. Replace `lib/main.dart` with this:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First Flutter App'),
        ),
        body: const Center(
          child: Text(
            'Hello Flutter 🚀',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
```

Run again → you’ll see **Hello Flutter 🚀**.

---

# 🧩 Part 5: Core Flutter Concepts

Before we get advanced, let’s master the **basics**:

### 🔹 1. Widgets

* **StatelessWidget** → UI that doesn’t change (e.g., a label).
* **StatefulWidget** → UI that changes (e.g., counter, form).

### 🔹 2. Hot Reload

When editing code, press **r** in terminal or click ⚡ in Android Studio → changes appear instantly (no full restart needed).

### 🔹 3. Layout

Flutter uses widgets like:

* **Column** → vertical layout
* **Row** → horizontal layout
* **Container** → like a box with padding, color, margin
* **Scaffold** → basic page with app bar, body, floating button

### 🔹 4. Styling

You style with properties:

```dart
Text(
  "Styled Text",
  style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
)
```

---

# 📌 Part 6: Next Steps (as a roadmap)

Here’s how I’ll guide you step by step:

- ✅ Week 1 → Learn **Dart basics** + simple apps (Hello World, Buttons, Text, Images)
- ✅ Week 2 → Master **Layouts & Navigation** (Row, Column, Stack, ListView, Navigator)
- ✅ Week 3 → Learn **State Management** (setState, Provider, Riverpod, Bloc)
- ✅ Week 4 → Build **real-world apps** (To-Do App, Calculator, Weather App)
- ✅ Week 5+ → Connect APIs, Firebase, Authentication, Local Storage, Deploy apps to Play Store

---
