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
          header: 'Learning',
          information: 'Mental conditions where the brain has difficulties in processing or comprehending information.',
          icon: Icons.people,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Dyslexia',
          information: 'Characterized by problems in word recognition, resulting in reading comprehension impairments and orthographic processing',
          icon: Icons.check_box,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Dysgraphia',
          information: 'Involves difficulty in converting thoughts into written form regardless of amount of exposure to education.',
          icon: Icons.check_box,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Comprehension',
          information: 'People with learning disabilities may have difficulty with comprehension and mathematics, which are very much related to each other, ',
          icon: Icons.check_box,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
      ],
    );
  }
}