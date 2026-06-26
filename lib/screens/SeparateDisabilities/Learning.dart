import 'package:flutter/material.dart';
import '../SeparateDisability.dart';

class LearningPage extends StatefulWidget {
  const LearningPage({
    super.key
  });

  @override
  LearningPageScreen createState() => LearningPageScreen();
}

class LearningPageScreen extends State<LearningPage> {

  @override
  Widget build(BuildContext context) {
    return SeparateDisabilityState(
      children: [
        InformationLeftLogoRightSection(
          header: 'Learning Disability',
          information: 'Mental conditions where the brain has difficulties in processing or comprehending information.',
          icon: Icons.people,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Disorder 1: Dyslexia',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Disorder 2: Dysgraphia',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Disorder 3: Difficulty in Math or Comprehension',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
      ],
    );
  }
}