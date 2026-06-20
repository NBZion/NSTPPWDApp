import 'package:flutter/material.dart';
import 'package:pwdapp/utils/color_extensions.dart';

class PwdRightsPage extends StatefulWidget {
  const PwdRightsPage({super.key});

  @override
  State<PwdRightsPage> createState() => _PwdRightsPageState();
}

class _PwdRightsPageState extends State<PwdRightsPage> {
  // Function to show the custom popup dialog for each law
  void _showLawDetails(
    BuildContext context,
    String title,
    String mainText,
    String detailsText,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 5,
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Close row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.grey),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  // Main Highlighted Text
                  Text(
                    mainText,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Detailed descriptive text
                  Text(
                    detailsText,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[800],
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Reuse your existing custom AppBar configuration here
      appBar: AppBar(
        toolbarHeight: 150,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: HexColor.fromHex("#3355FF"),
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
                      const Text(
                        "PWD Wellness App",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // Button Row
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
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
                      const Text(
                        "Barangay Timbao",
                        style: TextStyle(color: Colors.white, fontSize: 18),
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
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Screen Header Title
            const Center(
              child: Text(
                "Laws Protecting PWDs",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 25),

            // 1. Law Card: R.A 10754
            _buildLawCard(
              title: "R.A 10754",
              subtitle: "The Magna Carta for Persons with Disabilities",
              onReadTap: () {
                _showLawDetails(
                  context,
                  "R.A 10754",
                  "The Magna Carta for Persons with Disabilities grants PWDs with a 20% discount and VAT exemption on various products and services in the Philippines.",
                  "Includes:\nMedicine, Medical & Dental Services, Public Transportation, Hospital Fees, Restaurant & Food Establishment Fees, Hotels, Cinemas, Concerts",
                );
              },
            ),
            const SizedBox(height: 20),

            // 2. Law Card: R.A 7277
            _buildLawCard(
              title: "R.A 7277",
              subtitle: "The Magna Carta for Disabled Persons",
              onReadTap: () {
                _showLawDetails(
                  context,
                  "R.A 7277",
                  "The Magna Carta for Disabled Persons protects and promotes the rights and welfare of Persons with Disabilities in the Philippines.",
                  "It aims to provide equal opportunities and access to education, employment, healthcare, rehabilitation, and social participation for PWDs.",
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Custom helper widget to construct each list card
  Widget _buildLawCard({
    required String title,
    required String subtitle,
    required VoidCallback onReadTap,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          // Align button to the bottom right
          Align(
            alignment: Alignment.bottomRight,
            child: OutlinedButton.icon(
              onPressed: onReadTap,
              icon: const Icon(Icons.stars, size: 18, color: Colors.black87),
              label: const Text(
                "Read",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.grey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
