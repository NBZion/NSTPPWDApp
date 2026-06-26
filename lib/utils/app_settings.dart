import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSettings extends ChangeNotifier {
  String selectedColor = 'Vivid Blue';
  String selectedFont = 'Bricolage';
  String selectedIconSize = 'Small';
  String selectedDarkMode = 'Off';

  Future<void> loadSettings() async {
    final prefs = await SharedPreferences.getInstance();

    selectedColor = prefs.getString('theme_color') ?? 'Vivid Blue';
    selectedFont = prefs.getString('theme_font') ?? 'Roboto';
    selectedIconSize = prefs.getString('icon_size') ?? 'Medium';
    selectedDarkMode = prefs.getString('dark_mode') ?? 'Off';
    
    notifyListeners(); // Refresh the app with loaded settings
  }

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

  void updateColor(String newColor) async {
    selectedColor = newColor;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme_color', newColor); 
  }

  void updateFont(String newFont) async {
    selectedFont = newFont;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme_font', newFont); 
  }

  void updateIconSize(String newSize) async {
    selectedIconSize = newSize;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('icon_size', newSize);
  }

  void updateDarkMode(String newMode) async {
    selectedDarkMode = newMode;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('dark_mode', newMode);
  }

}

final globalSettings = AppSettings();