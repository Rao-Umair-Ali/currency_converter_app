import 'package:flutter/material.dart';

Widget buttonElevated(VoidCallback onPressed) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue[800],
      foregroundColor: Colors.white,
      fixedSize: const Size(370, 40),
    ),
    child: const Text(
      "Change",
      style: TextStyle(shadows: [
        Shadow(
          blurRadius: 5.0,
          color: Colors.black, // Shadow color for a better outline effect
          offset: Offset(2.0, 2.0),
        ),
      ], fontSize: 16),
    ),
  );
}
