import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/config/app_theme.dart';

class ThemeProvider with ChangeNotifier {
  bool isDarkMode = false;
  ThemeData get currentTheme =>
      isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme;
}
