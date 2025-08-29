# 📘 Dart Basics – Part 1

### 🔹 1. Your First Dart Program

Create a file `hello.dart`:

```dart
void main() {
  print('Hello Dart 🚀');
}
```

Run it:

```bash
dart run hello.dart
```

Output:

```
Hello Dart 🚀
```

👉 `main()` is the entry point.

---

### 🔹 2. Variables

Dart is **statically typed**, but you can also use `var`.

```dart
void main() {
  // Explicit types
  String name = 'Istiak';
  int age = 22;
  double gpa = 3.85;
  bool isStudent = true;

  // Implicit type inference
  var city = 'Dhaka';

  print('$name is $age years old, lives in $city');
}
```

---

### 🔹 3. Data Types

Dart has common data types:

* **int** → whole numbers
* **double** → decimal numbers
* **String** → text
* **bool** → true/false
* **List** → array
* **Map** → key-value pairs

Example:

```dart
void main() {
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  Map<String, String> user = {
    'name': 'Istiak',
    'role': 'Student'
  };

  print(fruits[1]);  // Banana
  print(user['name']); // Istiak
}
```

---

### 🔹 4. Control Flow

**If / else**

```dart
void main() {
  int marks = 75;

  if (marks >= 80) {
    print('Grade: A+');
  } else if (marks >= 60) {
    print('Grade: B');
  } else {
    print('Fail');
  }
}
```

**Loops**

```dart
void main() {
  for (int i = 1; i <= 5; i++) {
    print('Number $i');
  }

  List<String> names = ['Ali', 'Hasan', 'Nadia'];
  for (var name in names) {
    print(name);
  }

  int counter = 3;
  while (counter > 0) {
    print('Counter: $counter');
    counter--;
  }
}
```

---

### 🔹 5. Functions

```dart
int add(int a, int b) {
  return a + b;
}

void main() {
  print(add(5, 7)); // 12
}
```

👉 Dart also supports **arrow functions**:

```dart
int square(int x) => x * x;
```

---

### 🔹 6. Classes & Objects (OOP basics)

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print("Hi, I'm $name and I'm $age years old.");
  }
}

void main() {
  Person p1 = Person('Istiak', 22);
  p1.introduce();
}
```

---

### 🔹 7. Null Safety (very important in Flutter)

Dart forces you to handle **null values** safely.

```dart
void main() {
  String? name = null; // nullable
  print(name); // null

  String city = "Dhaka"; // non-nullable
  print(city);

  // Null check
  String? country;
  print(country ?? "Unknown"); // prints "Unknown"
}
```

---

# 🚀 Practice Task for You

1. Write a Dart program that:

   * Stores your **name, age, university** in variables
   * Puts your favorite 3 programming languages in a **List**
   * Prints them all nicely

2. Write a **class `Car`** with properties: brand, year, and a method `drive()`.
   Create 2 car objects and call `drive()`.

---
