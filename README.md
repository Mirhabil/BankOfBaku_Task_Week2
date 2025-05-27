# 📐 Dart Mini Project: Shape Area Calculator

This is a simple **Shape Area Calculator** written in **Dart** using **Object-Oriented Programming (OOP)** concepts. It lets you calculate the area of various geometric shapes using polymorphism and inheritance.

---

## ✨ Features

- ✅ Abstract `Shape` class with `calculateArea()` method
- ✅ Concrete classes: `Circle`, `Rectangle`, and `Triangle`
- ✅ Polymorphic method overriding for area calculation
- ✅ `ShapeManager` to manage and display shapes
- ✅ Console-based simulation for shape management

---

## 🛠 Technologies Used

- **Dart** (>=2.12)
- Pure Dart (console)

---

## 🧩 Project Structure

lib/
├── models/
│ ├── shape.dart # Abstract base class
│ ├── circle.dart # Circle with radius
│ ├── rectangle.dart # Rectangle with width & height
│ └── triangle.dart # Triangle with base & height
├── services/
│ └── shape_manager.dart # Handles shape storage and display
└── main.dart # Entry point with simulation
