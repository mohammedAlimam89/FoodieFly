import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    surface: const Color(0xFF0F0F1A),
    primary: const Color(0xFFFF6B35),
    secondary: const Color(0xFFFF8C61),
    onPrimary: Colors.white,
    onSurface: const Color(0xFFF0F0F0),
    surfaceContainerHighest: const Color(0xFF1E1E30),
    outline: const Color(0xFF2E2E45),
  ),
  scaffoldBackgroundColor: const Color(0xFF0F0F1A),
  useMaterial3: true,
);
