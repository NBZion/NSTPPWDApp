import 'package:flutter/material.dart';
//import 'package:pwdapp/utils/color_extensions.dart';
import '../utils/app_settings.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  // State variables to hold the selected dropdown values
  String selectedColor = 'Vivid Blue';
  String selectedFont = 'Bricolage';
  String selectedIconSize = 'Small';
  String selectedDarkMode = 'Off';
  String selectedTTS = 'Off';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Reuse your existing custom AppBar configuration here
      appBar: AppBar(
        toolbarHeight: 150,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: globalSettings.themeColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  // Main PWD Wellness App Text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "PWD Wellness App",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: globalSettings.selectedFont
                        ),
                      ),

                      // Button Row
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/MainScreen');
                            },
                            icon: Icon(Icons.home_outlined),
                            color: Colors.white,
                          ),

                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.settings_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // Barangay Timbao Text
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 32,
                      ),
                      Text(
                        "Barangay Timbao",
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 18,
                          fontFamily: globalSettings.selectedFont
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Search Bar
                  Container(
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Search for specific information here",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Screen Title
            const Center(
              child: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // 1. Customization Section
            Text(
              "Customization",
              style: TextStyle(
                fontSize: 22, 
                fontWeight: FontWeight.bold,
                fontFamily: globalSettings.selectedFont
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: globalSettings.themeColor, //const Color(0xFF3355FF), // Matching blue card background
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  _buildSettingRow(
                    "System Color",
                    selectedColor,
                    ['Vivid Blue', 'Soft Red', 'Deep Emerald'],
                    (val) 
                    {
                      globalSettings.updateColor(val!);
                      setState(() => selectedColor = val); //
                    },
                  ),
                  const Divider(color: Colors.white30, height: 20),
                  _buildSettingRow(
                    "System Font",
                    selectedFont,
                    ['Bricolage', 'Roboto', 'Open Sans'],
                    (val)
                    {
                      globalSettings.updateFont(val!);
                      setState(() => selectedFont = val); 
                    }, 
                  ),
                  const Divider(color: Colors.white30, height: 20),
                  _buildSettingRow(
                    "Icon Size",
                    selectedIconSize,
                    ['Small', 'Medium', 'Large'],
                    (val) 
                    {
                      globalSettings.updateIconSize(val!);
                      setState(() => selectedIconSize = val);
                    },
                  ),
                  const Divider(color: Colors.white30, height: 20),
                  _buildSettingRow(
                    "Dark Mode",
                    selectedDarkMode,
                    ['On', 'Off'],
                    (val)  
                    {
                      globalSettings.updateDarkMode(val!);
                      setState(() => selectedDarkMode = val);
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),

            // 2. Accessibility Section
            Text(
              "Accessibility",
              style: TextStyle(
                fontSize: 22, 
                fontWeight: FontWeight.bold,
                fontFamily: globalSettings.selectedFont
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: globalSettings.themeColor, //const Color(0xFF3355FF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  _buildSettingRow(
                    "Text-To-Speech",
                    selectedTTS,
                    ['On', 'Off'],
                    (val) {
                      setState(() => selectedTTS = val!);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to generate cleaner layout rows for settings options
  Widget _buildSettingRow(
    String title,
    String currentValue,
    List<String> options,
    ValueChanged<String?> onChanged,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontFamily: globalSettings.selectedFont
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: 28,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: currentValue,
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black,
                size: 18,
              ),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              onChanged: onChanged,
              items: options.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
