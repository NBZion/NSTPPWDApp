import 'package:flutter/material.dart';
// import 'package:pwdapp/utils/color_extensions.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:pwdapp/utils/app_settings.dart';

class GovernmentTab extends StatefulWidget {
  const GovernmentTab({super.key});
  @override
  GovernmentTabState createState() => GovernmentTabState();
}

class GovernmentTabState extends State<GovernmentTab> {
  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    return Scaffold(
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
                              Navigator.pushReplacementNamed(
                                context,
                                '/MainScreen',
                              );
                            },
                            icon: Icon(Icons.home_outlined),
                            color: Colors.white,
                          ),

                          IconButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                context,
                                '/Settings',
                              );
                            },
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
                        style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: globalSettings.selectedFont),
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

      // Non Appbar Logic
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Government Program",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: globalSettings.selectedFont
                ),
              ),
            ),

            const SizedBox(height: 25),

            _buildGovernmentProgramItem(
              title:
                  "The Comprehensive Program for Persons with Disabilities (DSWD)",
              description:
                  "The Comprehensive Program for Persons with Disabilities aims to promote services to all types...",
              url: "https://www.dswd.gov.ph",
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _openBrowserLink(String urlString) async {
    final Uri url = Uri.parse(urlString);

    // LaunchMode.externalApplication forces it to open in Chrome/Safari instead of inside the app
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $urlString');
    }
  }

  Widget _buildGovernmentProgramItem({
    required String title,
    required String description,
    required String url,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => _openBrowserLink(url),
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    color: Colors
                        .blue, // Changed to blue to look more like a clickable web link
                    height: 1.2,
                    fontFamily: globalSettings.selectedFont
                  ),
                ),
              ),

              const SizedBox(height: 6),
              Text(
                description,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[800],
                  height: 1.3,
                  fontFamily: globalSettings.selectedFont
                ),
              ),
            ],
          ),
        ),

        const SizedBox(width: 16),
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: globalSettings.themeColor, //const Color(0xFF0088FF),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Icon(Icons.favorite, color: Colors.red, size: 35),
          ),
        ),
      ],
    );
  }
}
