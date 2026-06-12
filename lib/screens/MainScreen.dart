import 'package:flutter/material.dart';
import 'package:pwdapp/utils/color_extensions.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
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



      
      
      body: Padding(
        padding: const EdgeInsetsGeometry.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 50,
          children: [

            // FIRST ROW OF BUTTONS
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 50,
              children: [
                
                // BUTTON 1
                SizedBox(
                  width: 150,
                  height: 150,
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.white
                    ),
                    onPressed:() {
                      print("Button 1 Pressed");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          // ICON BOX
                          const DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            // ICON
                            child: SizedBox(
                              width: 32,
                              height: 32,
                              child: Icon(Icons.accessibility, color: Colors.white, size: 16),
                            ),
                          ),

                          // MAIN TITLE
                          const Text(
                            'Learn About Disabilities',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          // SUBTITLE
                          const Text(
                            'Information about different disabilities',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                        )

                        ],
                      ),
                    )
                  )
                ),

                // BUTTON 2
                SizedBox(
                  width: 150,
                  height: 150,
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.white
                    ),
                    onPressed:() {
                      print("Button 1 Pressed");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          // ICON BOX
                          const DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.amberAccent,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            // ICON
                            child: SizedBox(
                              width: 32,
                              height: 32,
                              child: Icon(Icons.domain, color: Colors.white, size: 16),
                            ),
                          ),

                          // MAIN TITLE
                          const Text(
                            'PWD Rights',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          // SUBTITLE
                          const Text(
                            'Learn about rights and legal protections for PWD citizens of the Philippines',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                        )

                        ],
                      ),
                    )
                  )
                ),
              ]
            ),

          // SECOND ROW OF BUTTONS
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 50,
              children: [
                // BUTTON 3
                SizedBox(
                  width: 150,
                  height: 150,
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    onPressed:() {
                      print("Button 1 Pressed");
                    },

                    // CONTENTS OF BUTTON 3
                    child: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          // ICON BOX
                          const DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            // ICON
                            child: SizedBox(
                              width: 32,
                              height: 32,
                              child: Icon(Icons.check, color: Colors.white, size: 16),
                            ),
                          ),

                          // MAIN TITLE
                          const Text(
                            'PWD Rights',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          // SUBTITLE
                          const Text(
                            'Learn about rights and legal protections for PWD citizens of the Philippines',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                        )

                        ],
                      ),
                    )
                  ),
                ),

                  // BUTTON 4
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder (
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: Colors.white
                      ),
                      onPressed:() {
                        print("Button 1 Pressed");
                      },
                      child: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          // ICON BOX
                          const DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            // ICON
                            child: SizedBox(
                              width: 32,
                              height: 32,
                              child: Icon(Icons.house, color: Colors.white, size: 16),
                            ),
                          ),

                          // MAIN TITLE
                          const Text(
                            'Learn About PWD Timbao',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          // SUBTITLE
                          const Text(
                            'Information about PWD Timbao',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                          )

                        ],
                      ),
                    )
                  ),
                )


              ]


            ),
          ]
        ),
      ),
    );
  }
}
