import 'package:flutter/material.dart';
import 'screens/DisabilitiesTab.dart';
import 'screens/MainScreen.dart';

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
      initialRoute: '/DisabilitiesTab',
      routes: {
        '/DisabilitiesTab': (context) => const DisabilitiesTab(),
        '/MainScreen': (context) => const MainScreen(),
      },
    );
  }
}
