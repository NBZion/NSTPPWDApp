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
          header: 'Chronic',
          information: 'Serious illnesses or long-term diseases that affects and limits daily activities',
          icon: Icons.people,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Heart Diseases',
          information: 'A serious condition where the heart cannot pump blood properly, causing symptoms like chest pain, shortness of breath, fatigue, and difficulty doing physical activities.',
          icon: Icons.check_box,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Diabetes',
          information: 'Long-term problems from uncontrolled diabetes, including nerve damage (numbness or pain), vision loss, kidney damage, and slow-healing wounds that can affect daily life.',
          icon: Icons.check_box,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
      ],
    );
  }
}