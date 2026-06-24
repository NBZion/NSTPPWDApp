import 'package:flutter/material.dart';
import 'package:pwdapp/utils/color_extensions.dart';

class SeparateDisability extends StatefulWidget {
  const SeparateDisability({super.key});
  @override
  SeparateDisabilityState createState() => SeparateDisabilityState();
}

class SeparateDisabilityState extends State<SeparateDisability> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/MainScreen');
                            },
                            icon: Icon(Icons.home_outlined),
                            color: Colors.white,
                          ),

                          IconButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/Settings');
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

      body: Padding (
        padding: const EdgeInsetsGeometry.only(top: 20, bottom: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InformationLeftLogoRightSection(
                  header: 'Header 1',
                  information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
                  icon: Icons.people,
                  size: 120,
                  paddingvalue: 40
                ),
                InformationRightLogoLeftSection(
                  header: 'Header 2',
                  information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
                  icon: Icons.check_box,
                  size: 120,
                  paddingvalue: 40
                ),
                InformationLeftLogoRightSection(
                  header: 'Header 3',
                  information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
                  icon: Icons.check_box,
                  size: 120,
                  paddingvalue: 40
                )
              ]
            )
          )
        )
      ),
    );
  }
}

// INFORMATION + LOGO SECTION
class InformationLeftLogoRightSection extends StatelessWidget {
    const InformationLeftLogoRightSection({
      super.key,
      required this.header,
      required this.information,
      required this.icon,
      required this.size,
      required this.paddingvalue
    });

    final String header;
    final String information;
    final IconData icon;
    final double size;
    final double paddingvalue;

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsetsGeometry.only(bottom: 15),

        // COLUMN
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WordSubSection(
                header: header,
                information: information,
                rightside: 20,
                leftside: 0,
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(right: paddingvalue),
                child: Icon(
                  icon,
                  size: size,
                  color: Colors.blue
                )
              ),
            ],
          )
      );
    }
}

// INFORMATION + LOGO SECTION
class InformationRightLogoLeftSection extends StatelessWidget {
    const InformationRightLogoLeftSection({
      super.key,
      required this.header,
      required this.information,
      required this.icon,
      required this.size,
      required this.paddingvalue
    });

    final String header;
    final String information;
    final IconData icon;
    final double size;
    final double paddingvalue;

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsetsGeometry.only(bottom: 15),

        // COLUMN
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsGeometry.only(left: paddingvalue),
                child: Icon(
                  icon,
                  size: size,
                  color: Colors.blue
                )
              ),
              WordSubSection(
                header: header,
                information: information,
                rightside: 0,
                leftside: 20,
              ),
            ],
          )
      );
    }
}

class WordSubSection extends StatelessWidget {
  const WordSubSection({
    super.key,
    required this.header,
    required this.information,
    required this.leftside,
    required this.rightside,
  });

  final String header;
  final String information;
  final double leftside;
  final double rightside;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: 200,
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.blueAccent,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(leftside),
            right: Radius.circular(rightside)
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withValues(),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(4, 4),
            ),
          ],
          border: Border.all(
            color: Colors.white,
            width: 2.0
          )
        ),
        child: Column(
          spacing: 5.0,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.all(5.0),
              child: 
                Row(
                  spacing: 5.0,
                  children: [
                    Padding(
                      padding: EdgeInsetsGeometry.only(top: 40, left: 10),
                      child: Text(
                        header,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white
                        )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.only(top: 40, left: 10),
                      child: Icon(Icons.chat_bubble)
                    ),
                  ],
                ),
              ),
            Padding(
              padding: EdgeInsetsGeometry.only(top: 20, left: 10),
              child: Text(information)
            )
          ]
        )
      ),
    );
  }
}