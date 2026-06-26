import 'package:flutter/material.dart';
import '../SeparateDisability.dart';

class VisualPage extends StatefulWidget {
  const VisualPage({
    super.key
  });

  @override
  VisualPageScreen createState() => VisualPageScreen();
}

class VisualPageScreen extends State<VisualPage> {

  @override
  Widget build(BuildContext context) {
    return SeparateDisabilityState(
      children: [
        InformationLeftLogoRightSection(
          header: 'Visual',
          information: 'Medical conditions that affect vision but cannot be corrected by glasses or treatment.',
          icon: Icons.people,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Blindness',
          information: 'Blindness usually refers to the inability to make out anything visually either due to bluryness or other visual impairments that make it difficult to perceive anything through the eyes.',
          icon: Icons.check_box,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Low Vision',
          information: 'Low vision may not necessarily mean completely blindness, and may refer to difficulty in perceiving things using the eyes. ',
          icon: Icons.check_box,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Limited Field',
          information: 'There are also instances wherein the eyes cannot perceive widely while looking straight ahead, resulting in a "limited field" that makes it difficult to see things on the side of the eyes.',
          icon: Icons.check_box,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
      ],
    );
  }
}