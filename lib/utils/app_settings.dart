import 'package:flutter/material.dart';

class AppSettings extends ChangeNotifier {
  String selectedColor = 'Vivid Blue';
  String selectedFont = 'Bricolage';
  String selectedIconSize = 'Small';
  String selectedDarkMode = 'Off';

  Color get themeColor {
    switch(selectedColor) {
      case 'Soft Red' : return const Color(0xFFFF5555);
      case 'Deep Emerald' : return const Color(0xFF00875A);
      case 'Vivid Blue' : 
      default: return const Color(0xFF3355FF);
    }
  }

  double get iconSizeMultiplier {
    switch(selectedIconSize) {
      case 'Medium': return 18.0;
      case 'Large': return 20.0;
      case 'Small':
      default: return 16.0;
    }
  }

  void updateColor(String newColor) {
    selectedColor = newColor;
    notifyListeners();
  }

  void updateFont(String newFont) {
    selectedFont = newFont;
    notifyListeners();
  }

  void updateIconSize(String newSize) {
    selectedIconSize = newSize;
    notifyListeners();
  }

  void updateDarkMode(String newMode) {
    selectedDarkMode = newMode;
    notifyListeners();
  }

}

final globalSettings = AppSettings();