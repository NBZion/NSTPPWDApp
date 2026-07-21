import 'package:flutter/material.dart';
import 'package:pwdapp/utils/color_extensions.dart';
import '../utils/app_settings.dart';

class DisabilitiesTab extends StatefulWidget {
  const DisabilitiesTab({super.key});
  @override
  DisabilitiesTabState createState() => DisabilitiesTabState();
}

class DisabilitiesTabState extends State<DisabilitiesTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
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
                            icon: Icon(
                              Icons.home_outlined,
                              size: globalSettings.iconSizeMultiplier + 5
                            ),
                            color: Colors.white,
                          ),

                          IconButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/Settings');
                            },
                            icon: Icon(
                              Icons.settings_outlined,
                              color: Colors.white,
                              size: globalSettings.iconSizeMultiplier + 5
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
                  /*Container(
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
                  ),*/
                ],
              ),
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsetsGeometry.all(20),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 0.9,
          children: [
            DisabilityCard(icon: Icons.forum_rounded, label: "Psychosocial", route: '/PsychosocialPage'),
            DisabilityCard(icon: Icons.accessible, label: "Orthopedic", route: '/OrthopedicPage'),
            DisabilityCard(icon: Icons.co_present, label: "Learning", route: '/LearningPage'),
            DisabilityCard(icon: Icons.visibility, label: "Visual", route: '/VisualPage'),
            // DisabilityCard(icon: Icons.assist_walker, label: "Physical", route: '/'), // INFO MISSING
            // DisabilityCard(icon: Icons.hearing, label: "Hearing", route: '/'), // INFO MISSING
            DisabilityCard(icon: Icons.record_voice_over, label: "Communication", route: '/CommunicationPage'),
            DisabilityCard(icon: Icons.all_inclusive, label: "Cancer", route: '/CancerPage'),
            DisabilityCard(icon: Icons.psychology, label: "Mental", route: '/MentalPage'),
            DisabilityCard(icon: Icons.all_inclusive_rounded, label: 'Chronic', route: '/ChronicPage')
            /*DisabilityCard( // INFO MISSING
              icon: Icons.translate,
              label: "Speech and\nLanguage",
              route: '/SpeechLanguage'
            ),*/
          ],
        ),
      ),
    );
  }
}

class DisabilityCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String route;

  // Add Navigation Variable Here
  const DisabilityCard({
    super.key,
    required this.icon,
    required this.label,
    required this.route
    /*, Add navigation here */
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          /* Navigation Logic */
          //print("Pressed");
          Navigator.pushReplacementNamed(context, route);
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(color: HexColor.fromHex("#F3E8FF")),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: globalSettings.iconSizeMultiplier + 24, color: Colors.black),
              Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: globalSettings.selectedFont
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
