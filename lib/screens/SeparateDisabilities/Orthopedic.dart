import 'package:flutter/material.dart';
import '../SeparateDisability.dart';

class OrthopedicPage extends StatefulWidget {
  const OrthopedicPage({
    super.key
  });

  @override
  OrthopedicPageScreen createState() => OrthopedicPageScreen();
}

class OrthopedicPageScreen extends State<OrthopedicPage> {

  @override
  Widget build(BuildContext context) {
    return SeparateDisabilityState(
      children: [
        InformationLeftLogoRightSection(
          header: 'Orthopedic Disabilities',
          information: 'Physical conditions that affect overall movement, mobility, and physical function of the patient.',
          icon: Icons.people,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Disorder 1: Amputation',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Disorder 2: Cerebral Palsy',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Disorder 3: Paraplegia / quadriplegia',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Disorder 4: Polio',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Disorder 5: Spina bifida',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        )
      ],
    );
  }
}