import 'package:flutter/material.dart';
import 'package:pwdapp/utils/app_settings.dart';
// import 'package:pwdapp/utils/color_extensions.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top Bar
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
                            onPressed: () {},
                            icon: Icon(
                              Icons.home_outlined,
                              size: globalSettings.iconSizeMultiplier + 5,
                            ),
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

        child: Column(
          spacing: 30,
          children: [
            // DATA
            Column(
              spacing: 10,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DataDisplay(
                      title: 'Registered PWDs',
                      color: Colors.lightBlue,
                      initdata: 320,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    DataDisplay(
                      title: 'Caretakers',
                      color: Colors.redAccent,
                      initdata: 25,
                    ),
                    DataDisplay(
                      title: 'Programs',
                      color: Colors.greenAccent,
                      initdata: 25,
                    ),
                  ],
                ),
              ],
            ),

            // BUTTONS
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 50,
              children: [
                // FIRST ROW OF BUTTONS
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 50,
                  children: [
                    // BUTTON 1
                    HomeOption(
                      iconboxcolor: Colors.lightBlue,
                      icon: Icons.accessibility,
                      title: 'Learn About Disabilities',
                      subtitle: 'Information about different distabilites',
                      subtitlespace: 2,
                      route: '/DisabilitiesTab',
                    ),
                    // BUTTON 2
                    HomeOption(
                      iconboxcolor: Colors.amber,
                      icon: Icons.folder,
                      title: 'Government Programs',
                      subtitle:
                          'Access local and national programs for PWD citizens',
                      subtitlespace: 2,
                      route: '/GovernmentTab',
                    ),
                  ],
                ),

                // SECOND ROW OF BUTTONS
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 50,
                  children: [
                    // BUTTON 3
                    HomeOption(
                      iconboxcolor: Colors.greenAccent,
                      icon: Icons.check,
                      title: 'PWD Rights',
                      subtitle:
                          'Learn about rights and legal protections for PWD citizens of the Philippines',
                      subtitlespace: 12,
                      route: '/PWDRights',
                    ),
                    // BUTTON 4
                    HomeOption(
                      iconboxcolor: Colors.pinkAccent,
                      icon: Icons.house,
                      title: 'Learn About PWD Timbao',
                      subtitle: 'Information about PWD Timbao',
                      subtitlespace: 2,
                      route: '/PWDTimbao',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeOption extends StatelessWidget {
  const HomeOption({
    super.key,
    required this.iconboxcolor,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.subtitlespace,
    required this.route,
  });

  final Color iconboxcolor;
  final IconData icon;
  final String title;
  final String subtitle;
  final double subtitlespace;
  final String route;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: FilledButton(
        style: FilledButton.styleFrom(
          side: const BorderSide(color: Colors.black, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.white,
        ),
        onPressed: () {
          print("Button Pressed");
          /*Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: route
            ),
          )*/
          Navigator.pushReplacementNamed(context, route);
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 12, right: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              // ICON BOX
              SizedBox(
                width: 40,
                height: 32,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: iconboxcolor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),

                  // ICON
                  child: SizedBox(
                    width: 32,
                    height: 32,
                    child: Icon(icon, color: Colors.white, size: globalSettings.iconSizeMultiplier),
                  ),
                ),
              ),

              // MAIN TITLE
              Column(
                spacing: subtitlespace,
                children: [
                  // TITLE
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: globalSettings.selectedFont
                    ),
                  ),

                  // SUBTITLE
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.grey, 
                      fontSize: 8,
                      fontFamily: globalSettings.selectedFont
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DataDisplay extends StatefulWidget {
  const DataDisplay({
    super.key,
    required this.title,
    required this.color,
    required this.initdata,
  });

  final String title;
  final Color color;
  final int initdata;

  @override
  State<DataDisplay> createState() => _CounterDataWidget();
}

class _CounterDataWidget extends State<DataDisplay> {
  final int _counter = 0;

  /*void _increment() {
    setState(() {
      _counter++;
    })
  }*/

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 175,
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: widget.color,
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                (_counter + widget.initdata).toString(),
                style: TextStyle(
                  fontSize: 30, 
                  fontWeight: FontWeight.bold,
                  fontFamily: globalSettings.selectedFont
                ),
              ),

              Text(widget.title, style: TextStyle(fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }
}
