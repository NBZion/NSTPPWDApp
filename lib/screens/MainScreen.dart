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
        toolbarHeight: 186,
        backgroundColor: HexColor.fromHex("#3355FF"),
      ),
    );
  }
}
