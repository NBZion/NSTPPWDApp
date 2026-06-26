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
          header: 'Communication',
          information: 'Conditions that affect hearing, speech, or language involving difficulty',
          icon: Icons.people,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Deafness',
          information: 'This is a condition where a person cannot hear at all or has very little hearing ability, even with sound or amplification. This also refers to a reduced ability to hear sounds, which can be mild, moderate, severe, or profound.',
          icon: Icons.check_box,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Speech Disorder',
          information: 'These are conditions that affect a person’s ability to speak clearly or fluently. A person may have difficulty forming sounds, pronouncing words, or speaking in a way that others can easily understand.',
          icon: Icons.check_box,
          iconpadding: 0,
          size: 120,
          paddingvalue: 40
        ),
      ],
    );
  }
}