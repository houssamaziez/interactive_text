 interactive_text_plus  Flutter Package

A Flutter package for rendering interactive text with support for clickable phone numbers, email addresses, and URLs. This package simplifies handling these elements, enabling seamless interactions like dialing phone numbers, sending emails, or opening web links.


Run the following command to install the package:

```bash
flutter pub get
```

## Usage

### Basic Example

To display interactive text, simply use the `InteractiveTextScreen` widget and pass the text as a parameter.

```dart
import 'package:flutter/material.dart';
import 'package:interactive_text/interactive_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InteractiveTextScreen(
        description: "Contact us at example@example.com or call 123-456-7890. Visit https://example.com",
      ),
    );
  }
}
```

### Customization

You can further customize the style of the clickable items by modifying the `TextStyle` in the `_buildTextSpan` method in the package's source code.

## Supported Platforms

- Android
- iOS
- Web

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

We welcome contributions to this project! Please feel free to fork the repository, submit issues, or create pull requests.

To contribute:
- Fork the repository.
- Create a new branch for your feature or bugfix.
- Write tests for your code.
- Make sure your code adheres to the existing coding standards.
- Submit a pull request with a clear description of your changes.

## Contact

For any inquiries, feel free to contact me:

- **Name**: Houssam Eddine Aziez
- **Email**: houssamaziez@gmail.com
```

### Key Sections:
1. **Badges**: This section includes badges like version and license, which add professionalism and help users quickly identify package details.
2. **Features**: Briefly describes what the package can do, highlighting the key functionalities.
3. **Installation**: Instructions on how to add the package to a Flutter project.
4. **Usage**: Provides a sample usage of the package in a Flutter app, making it easier for users to get started quickly.
5. **Customization**: Brief note on customizing the widget or package features.
6. **Supported Platforms**: A list of platforms supported by the package.
7. **License**: Information about the license type, helping users understand the legal terms of using your package.
8. **Contributing**: A section inviting users to contribute to the project with clear steps on how to do so.
9. **Contact**: A professional way for users to get in touch.

Let me know if you'd like to adjust or add anything!