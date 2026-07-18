import 'package:flutter/material.dart';
//import 'package:pwdapp/utils/color_extensions.dart';
import 'package:pwdapp/utils/app_settings.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

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
                            icon: Icon(Icons.home_outlined, size: globalSettings.iconSizeMultiplier + 5,),
                            color: Colors.white,
                          ),

                          IconButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/Settings');
                            },
                            icon: Icon(
                              Icons.settings_outlined,
                              color: Colors.white,
                              size: globalSettings.iconSizeMultiplier + 5,
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

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Section: About Us Title
            Center(
              child: Text(
                "About Us",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, fontFamily: globalSettings.selectedFont),
              ),
            ),
            const SizedBox(height: 20),

            // 2. Section: Image + Text Side-by-Side Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Placeholder Image Container
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: ImageSection(image: 'assets/images/TimbaoLogo.png'), //Icon(Icons.image, size: 50, color: Colors.grey[400]),
                ),
                const SizedBox(width: 16),
                // Text side that fills up the remaining width
                Expanded(
                  child: Text(
                    "PWD Timbao is a non-profit organization recognized under the City Social Welfare and Development Office (CSWD) through the Persons with Disability Affairs Office (PDAO) of Biñan City, Laguna. ",
                    style: TextStyle(fontSize: 14, height: 1.4, fontFamily: globalSettings.selectedFont),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),

            // 3. Section: Lorem Ipsum Heading & Blocks
            const Text(
              "Objectives",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              "With the support of the Local Government Unit (LGU) and the PWD Federation, the organization aims to implement inclusive and sustainable programs that ensure the PWDs have full and equal participation in the society through access to opportunities for livelihood, health, education and social empowerment",
              style: TextStyle(fontSize: 14, height: 1.4, fontFamily: globalSettings.selectedFont),
            ),
            const SizedBox(height: 16),
            Text(
              "PWD Timbao provides a range of services and programs aimed at improving the welfare and quality of life of PWDs. These include processing PWD ID applications, assisting with PhilHealth registration, facilitating access to assistive devices through the PDAO and LGU, conducting livelihood training, referring clients for therapy and psychiatric assessments, and partnering with the Lasallian Mission Office in Biñan Laguna to support community programs.",
              style: TextStyle(fontSize: 14, height: 1.4, fontFamily: globalSettings.selectedFont),
            ),
            const SizedBox(height: 30),

            // 4. Section: Programs Title
            Center(
              child: Text(
                "Programs",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, fontFamily: globalSettings.selectedFont),
              ),
            ),
            const SizedBox(height: 20),

            // 5. Section: Programs List
            _buildProgramItem(
              icon: Icons.add_circle, // Standard Flutter red cross equivalent
              iconColor: Colors.red,
              title: "First Aid and Basic Life Saving training with Lifeline",
              description:
                  "PWD Timbao participating in First Aid and Basic Life Saving Training with Lifeline in De La...",
              onTap: () {
                // Handle link tap action
              },
            ),
            const SizedBox(height: 25),
            _buildProgramItem(
              icon: Icons
                  .supervised_user_circle_outlined, // Placeholder for rehab icon
              iconColor: Colors.blueGrey,
              title: "National Disability Rehabilitation Week",
              description:
                  "In honor of the 47th National Disability Rights Week, with the theme \"Innovation for Inclusi...",
              onTap: () {
                // Handle link tap action
              },
            ),
          ],
        ),
      ),
    );
  }

  // Custom helper to quickly construct a Program Item Row
  Widget _buildProgramItem({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String description,
    required VoidCallback onTap,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Custom sized icons to match layout
        Icon(icon, size: 40, color: iconColor),
        const SizedBox(width: 16),
        // Column containing the text elements on the right side
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: onTap,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    decoration:
                        TextDecoration.underline, // Underlined hyperlink look
                    fontFamily: globalSettings.selectedFont
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(
                  fontSize: 13,
                  // color: Colors.blueGrey[700],
                  height: 1.3,
                  fontFamily: globalSettings.selectedFont
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: 25, height: 25, fit: BoxFit.cover);
  }
}