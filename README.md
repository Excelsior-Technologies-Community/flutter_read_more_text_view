# 📖 ReadMoreTextView

A lightweight, customizable, and animation-friendly **Read More / Read Less text widget** for Flutter.

Designed with **clean architecture** and **library-first approach**, so you can easily use it in apps today and scale it as a reusable Flutter package.

---

## ✨ Features

✅ Expand & collapse long text  
✅ Smooth size animation  
✅ Custom max lines  
✅ Custom "Read More" / "Read Less" labels  
✅ Custom text & action styles  
✅ Overflow detection (button shows only when needed)  

---

## 📸 Preview
![Screenrecorder-2025-12-24-17-36-17-34](https://github.com/user-attachments/assets/e5180a92-9d85-41af-b05d-c60525f8fe24)


---

## 📦 Installation

### Add dependency in `pubspec.yaml`:

```yaml
dependencies:
  read_more_text_view:
    path:
      url: '.../flutter_read_more_text_view/read_more_text_view' ## your path
```

### Using GitHub (recommended during development):
```yaml
dependencies:
  read_more_text_view:
    git:
      url: https://github.com/YOUR_USERNAME/flutter_read_more_text_view.git
```

### Import
```dart
import 'package:read_more_text_view/read_more_text_view.dart';
```

---

## 🚀 Usage
### Basic Example
```dart
import 'package:flutter/material.dart';
import 'package:read_more_text_view/read_more_text_view.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Read More Example")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: ReadMoreTextView(
          text:
              "Flutter is Google’s UI toolkit for building beautiful, natively "
              "compiled applications for mobile, web, and desktop from a single "
              "codebase. It is fast, flexible, and expressive.",
          maxLines: 3,
        ),
      ),
    );
  }
}
```

### ⚠️ Important
When using very long text, wrap the widget with a scrollable parent   
( `SingleChildScrollView` / `ListView` ) to avoid overflow.

---

## 🎨 Customization
```dart
ReadMoreTextView(
  text: longText,
  maxLines: 2,
  readMoreText: "Show More",
  readLessText: "Show Less",
  textStyle: TextStyle(
    fontSize: 16,
    color: Colors.black87,
  ),
  actionTextStyle: TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  ),
  animationDuration: Duration(milliseconds: 400),
);
```

---

## 🧠 Parameters
| Parameter           | Type         | Description                    |
| ------------------- | ------------ | ------------------------------ |
| `text`              | `String`     | Full text content              |
| `maxLines`          | `int`        | Number of lines when collapsed |
| `readMoreText`      | `String`     | Expand label                   |
| `readLessText`      | `String`     | Collapse label                 |
| `textStyle`         | `TextStyle?` | Main text style                |
| `actionTextStyle`   | `TextStyle?` | Read more/less style           |
| `animationDuration` | `Duration`   | Expand/collapse animation      |

---

## 🏗️ Library Structure
```css
lib/
│
├── read_more_text_view.dart
│
└── src/
    ├── controllers/
    │   └── read_more_controller.dart
    │
    ├── core/
    │   ├── constants/
    │   │   └── app_colors.dart
    │   └── utils/
    │       └── text_utils.dart
    │
    └── widgets/
        └── read_more_text_view.dart
```
---

## ❌ Common Mistakes
❌ Using this widget without a scrollable parent for very long text   
❌ Forcing height inside the widget   
❌ Wrapping widget with `Expanded` unnecessarily

---

## 📄 License
```text
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
