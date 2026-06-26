import 'package:flutter/material.dart';
// import 'package:pwdapp/utils/color_extensions.dart';
import '../utils/app_settings.dart';


class SeparateDisabilityState extends StatelessWidget {
  
  const SeparateDisabilityState({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // APP BAR
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

      // BODY
      body: Padding (
        padding: const EdgeInsetsGeometry.only(top: 20, bottom: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: children,
              /* FORMAT EXAMPLE
              [
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
              ]*/
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
      required this.iconpadding,
      required this.size,
      required this.paddingvalue
    });

    final String header;
    final String information;
    final IconData icon;
    final double size;
    final double paddingvalue;
    final double iconpadding;

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
                iconpadding: iconpadding
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(right: paddingvalue),
                child: Icon(
                  icon,
                  size: size,
                  color: globalSettings.themeColor
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
      required this.iconpadding,
      required this.size,
      required this.paddingvalue
    });

    final String header;
    final String information;
    final IconData icon;
    final double size;
    final double paddingvalue;
    final double iconpadding;

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
                  color: globalSettings.themeColor
                )
              ),
              WordSubSection(
                header: header,
                information: information,
                rightside: 0,
                leftside: 20,
                iconpadding: iconpadding,
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
    required this.iconpadding
  });

  final String header;
  final String information;
  final double leftside;
  final double rightside;
  final double iconpadding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: 200,
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: globalSettings.themeColor,
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
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: globalSettings.selectedFont
                        )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.only(top: 40, left: iconpadding),
                      child: Icon(Icons.chat_bubble)
                    ),
                  ],
                ),
              ),
            Padding(
              padding: EdgeInsetsGeometry.only(top: 20, left: 10),
              child: Text(
                information,
                style: TextStyle(
                  fontFamily: globalSettings.selectedFont
                )
              )
            )
          ]
        )
      ),
    );
  }
}