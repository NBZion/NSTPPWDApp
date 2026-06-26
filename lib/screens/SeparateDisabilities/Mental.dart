import 'package:flutter/material.dart';
import '../SeparateDisability.dart';

class MentalPage extends StatefulWidget {
  const MentalPage({
    super.key
  });

  @override
  MentalPageScreen createState() => MentalPageScreen();
}

class MentalPageScreen extends State<MentalPage> {

  @override
  Widget build(BuildContext context) {
    return SeparateDisabilityState(
      children: [
        InformationLeftLogoRightSection(
          header: 'Mental',
          information: 'Medical conditions that affect cognitive ability. This includes intellectual, mental, neurodevelopmental, etc.',
          icon: Icons.people,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Down Syndrome',
          information: 'This is a genetic condition where people are born with an extra chromosome, changing the way they walk, speak, learn, or play',
          icon: Icons.check_box,
          iconpadding: 0,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Dementia',
          information: 'It refers generally to diseases that affect memory and thinking, influencing daily activity. This is typically caused by the destruction of nerve cells and damage to the brain, which leads to changes in cognitive ability.',
          icon: Icons.check_box,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Brain Injuries',
          information: 'Brain injury is caused by trauma to or piercing through the head, resulting in physical symptoms like headaches or nausea, sensory symptoms like blurred vision and ringing, or cognitive symptoms like memory or concentration problems.',
          icon: Icons.check_box,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
      ],
    );
  }
}