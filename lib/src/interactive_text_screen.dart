import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InteractiveTextScreen extends StatelessWidget {
  final String description;

  const InteractiveTextScreen({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(
      _buildTextSpan(description, context),
    );
  }

  TextSpan _buildTextSpan(String text, BuildContext context) {
    final phoneRegExp = RegExp(r'\b(05|06|07)(?:\d\s?){8}\b');
    final urlRegExp = RegExp(r'https?://[^\s]+');
    final emailRegExp =
        RegExp(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\b');

    List<InlineSpan> spans = [];
    text.splitMapJoin(
      RegExp(
          '${phoneRegExp.pattern}|${urlRegExp.pattern}|${emailRegExp.pattern}'),
      onMatch: (Match match) {
        final matchText = match.group(0)!;
        if (phoneRegExp.hasMatch(matchText)) {
          // Phone number
          spans.add(
            TextSpan(
              text: matchText,
              style: const TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  final Uri phoneUri = Uri(scheme: 'tel', path: matchText);
                  if (await canLaunchUrl(phoneUri)) {
                    await launchUrl(phoneUri);
                  }
                },
            ),
          );
        } else if (urlRegExp.hasMatch(matchText)) {
          // URL
          spans.add(
            TextSpan(
              text: matchText,
              style: const TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  final Uri url = Uri.parse(matchText);
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Could not open $matchText')),
                    );
                  }
                },
            ),
          );
        } else if (emailRegExp.hasMatch(matchText)) {
          // Email
          spans.add(
            TextSpan(
              text: matchText,
              style: const TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  final Uri emailUri = Uri(
                    scheme: 'mailto',
                    path: matchText,
                  );
                  if (await canLaunchUrl(emailUri)) {
                    await launchUrl(emailUri);
                  }
                },
            ),
          );
        }
        return matchText;
      },
      onNonMatch: (nonMatch) {
        spans.add(TextSpan(text: nonMatch));
        return nonMatch;
      },
    );

    return TextSpan(
      style: TextStyle(color: Colors.grey[700]),
      children: spans,
    );
  }
}
