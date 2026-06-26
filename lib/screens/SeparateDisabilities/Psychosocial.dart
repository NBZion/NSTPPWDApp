import 'package:flutter/material.dart';
import '../SeparateDisability.dart';

class PsychosocialPage extends StatefulWidget {
  const PsychosocialPage({
    super.key
  });

  @override
  PsychosocialPageScreen createState() => PsychosocialPageScreen();
}

class PsychosocialPageScreen extends State<PsychosocialPage> {

  @override
  Widget build(BuildContext context) {
    return SeparateDisabilityState(
      children: [
        InformationLeftLogoRightSection(
          header: 'Psychosocial Disabilities',
          information: 'Mental or behavioral conditions that challenge individuals in daily function and social interaction.',
          icon: Icons.people,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Disorder 1: Depression',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Disorder 2: Bipolar Disorder',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Disorder 3: Anxiety disorders',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Disorder 4: Schizophrenia',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Disorder 5: Attention-Deficit/Hyperactivity Disorder (ADHD)',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        )
      ],
    );
  }
}