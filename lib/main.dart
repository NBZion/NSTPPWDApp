import 'package:flutter/material.dart';
import 'package:pwdapp/screens/GovernmentTab.dart';
import 'package:pwdapp/screens/PWDRights.dart';
import 'package:pwdapp/screens/PWDTimbao.dart';
import 'package:pwdapp/screens/Settings.dart';
import 'screens/DisabilitiesTab.dart';
import 'screens/MainScreen.dart';

import 'utils/app_settings.dart';

import 'screens/SeparateDisabilities/Cancer.dart';
import 'screens/SeparateDisabilities/Chronic.dart';
import 'screens/SeparateDisabilities/Communication.dart';
import 'screens/SeparateDisabilities/Learning.dart';
import 'screens/SeparateDisabilities/Mental.dart';
import 'screens/SeparateDisabilities/Orthopedic.dart';
import 'screens/SeparateDisabilities/Psychosocial.dart';
import 'screens/SeparateDisabilities/Visual.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await globalSettings.loadSettings(); // load saved user data
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListenableBuilder(
      listenable: globalSettings,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'PWD Wellness App',
          themeMode: globalSettings.selectedDarkMode == 'On'
              ? ThemeMode.dark
              : ThemeMode.light,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true,
            brightness: Brightness.light,
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,
            colorScheme: ColorScheme.fromSeed(
              seedColor: globalSettings.themeColor,
              brightness: Brightness.dark,
            ),
          ),
          initialRoute: '/MainScreen',
          routes: {
            '/DisabilitiesTab': (context) => const DisabilitiesTab(),
            '/MainScreen': (context) => const MainScreen(),
            '/Settings': (context) => const Settings(),
            '/PWDTimbao': (context) => const AboutUsPage(),
            '/PWDRights': (context) => const PwdRightsPage(),
            '/GovernmentTab': (context) => const GovernmentTab(),

            '/CancerPage': (context) => const CancerPage(),
            '/ChronicPage': (context) => const ChronicPage(),
            '/CommunicationPage': (context) => const CommunicationPage(),
            '/LearningPage': (context) => const LearningPage(),
            '/MentalPage': (context) => const MentalPage(),
            '/OrthopedicPage': (context) =>  const OrthopedicPage(),
            '/PsychosocialPage': (context) => const PsychosocialPage(),
            '/VisualPage': (context) => const VisualPage(),
          },
        );
      }
    );
  }
}
