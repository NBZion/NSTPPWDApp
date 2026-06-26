import 'package:flutter/material.dart';
import '../SeparateDisability.dart';

class ChronicPage extends StatefulWidget {
  const ChronicPage({
    super.key
  });

  @override
  ChronicPageState createState() => ChronicPageState();
}

class ChronicPageState extends State<ChronicPage> {

  @override
  Widget build(BuildContext context) {
    return SeparateDisabilityState(
      children: [
        InformationLeftLogoRightSection(
          header: 'Chronic Illnesses',
          information: 'Serious illnesses or long-term diseases that affects and limits daily activities',
          icon: Icons.people,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Disorder 1: Severe Heart Diseases',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Disorder 2: Diabetes Complications',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
      ],
    );
  }
}