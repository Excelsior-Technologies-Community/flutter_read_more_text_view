import 'package:flutter/material.dart';
import '../../widgets/read_more_text/read_more_text_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Read More Demo")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ReadMoreTextView(
          text:
          "Flutter is Google’s UI toolkit for building beautiful, natively "
              "compiled applications for mobile, web, and desktop from a single "
              "codebase. It is fast, flexible, and expressive.",
          maxLines: 2,
          textStyle: const TextStyle(fontSize: 16,color: Colors.green),
          readMoreText: "Show More",
          readLessText: "Show Less",
          actionTextStyle: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
