import 'package:flutter/material.dart';
import 'package:interactive_text/interactive_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Interactive Text Example')),
        body: InteractiveTextScreen(
          description:
              'Call me at 0551234567, visit https://example.com, or email test@example.com.',
        ),
      ),
    );
  }
}
