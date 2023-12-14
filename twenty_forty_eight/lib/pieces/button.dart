import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../assets/colors.dart';

class Button extends ConsumerWidget {
  const Button({super.key, this.text, required this.onPressed});

  final String? text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // button widget for game reset and play again
    return ElevatedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.all(16.0)),
            backgroundColor: MaterialStateProperty.all<Color>(buttonColor)),
        onPressed: onPressed,
        child: Text(
          text!,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
        ));
  }
}
