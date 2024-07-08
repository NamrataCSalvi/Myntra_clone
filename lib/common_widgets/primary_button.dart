import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // Get the current theme
    final theme = Theme.of(context);

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(
            255, 63, 108, 1), // Set the button's background color here
        padding: EdgeInsets.all(12),
        textStyle: TextStyle(
          color: theme.colorScheme.onPrimary, // Use text color on primary color
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Text(title),
    );
  }
}
