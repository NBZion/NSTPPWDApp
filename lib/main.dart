import 'package:flutter/material.dart';
import 'package:pwdapp/screens/GovernmentTab.dart';
import 'package:pwdapp/screens/PWDRights.dart';
import 'package:pwdapp/screens/PWDTimbao.dart';
import 'package:pwdapp/screens/Settings.dart';
import 'screens/DisabilitiesTab.dart';
import 'screens/MainScreen.dart';
import 'screens/SeparateDisability.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/MainScreen',
      routes: {
        '/DisabilitiesTab': (context) => const DisabilitiesTab(),
        '/MainScreen': (context) => const MainScreen(),
        '/Settings': (context) => const Settings(),
        '/PWDTimbao': (context) => const AboutUsPage(),
        '/PWDRights': (context) => const PwdRightsPage(),
        '/SeparateDisability': (context) => const SeparateDisability(),
        '/GovernmentTab': (context) => const GovernmentTab(),
      },
    );
  }
}
