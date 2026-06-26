import 'package:flutter/material.dart';
import '../SeparateDisability.dart';

class CommunicationPage extends StatefulWidget {
  const CommunicationPage({
    super.key
  });

  @override
  CommunicationPageScreen createState() => CommunicationPageScreen();
}

class CommunicationPageScreen extends State<CommunicationPage> {

  @override
  Widget build(BuildContext context) {
    return SeparateDisabilityState(
      children: [
        InformationLeftLogoRightSection(
          header: 'Communication Disability',
          information: 'Conditions that affect hearing, speech, or language involving difficulty',
          icon: Icons.people,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Disorder 1: Deafness',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Disorder 2: IHearing Loss',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Disorder 3: Speech Disorder',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
      ],
    );
  }
}