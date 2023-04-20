import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  final bool isDark;
  final Function(bool) onThemeChanged;

  const ThemeButton({required this.isDark, required this.onThemeChanged});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isDark ? Icons.wb_sunny : Icons.nightlight_round,
      ),
      onPressed: () => onThemeChanged(!isDark),
    );
  }
}
