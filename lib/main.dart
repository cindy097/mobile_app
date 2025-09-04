import 'package:flutter/material.dart';
import 'views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false, // Nonaktifkan Material 3
      ),
      home: const WidgetTree(), // ✅ masuk sini
    );
  }
}
