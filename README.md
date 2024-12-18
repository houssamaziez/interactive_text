Interactive Text Flutter Package

A Flutter package for rendering interactive text with support for clickable phone numbers, email addresses, and URLs. This package simplifies handling these elements, enabling seamless interactions like dialing phone numbers, sending emails, or opening web links.

Features
Detects and highlights phone numbers, URLs, and email addresses within a text.
Tap on phone numbers to initiate calls.
Tap on email addresses to open the default mail client.
Tap on URLs to open them in the browser.
Fully customizable styling for interactive and non-interactive text.
Installation
Add the following to your pubspec.yaml file:

yaml
Copier le code
dependencies:
  interactive_text: ^1.0.0
Then, run:

bash
Copier le code
flutter pub get
Usage
Example
Here is how you can use InteractiveTextScreen in your app:

dart
Copier le code
import 'package:flutter/material.dart';
import 'package:interactive_text/interactive_text.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Interactive Text Example')),
        body: InteractiveTextScreen(
          description: 'Contact us at support@example.com or visit https://example.com. Call us at 0558063811!',
        ),
      ),
    );
  }
}
Output
The text will render with phone numbers, email addresses, and URLs highlighted. Users can tap on them to interact directly.

Customization
You can customize the TextStyle for interactive and non-interactive parts of the text by modifying the _buildTextSpan method in the widget.

Contributions
Contributions are welcome! Feel free to file issues, make feature requests, or submit pull requests.

License
This package is licensed under the MIT License. See the LICENSE file for details.

