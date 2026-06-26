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
          header: 'Orthopedic',
          information: 'Physical conditions that affect overall movement, mobility, and physical function of the patient.',
          iconpadding: 5,
          icon: Icons.people,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Amputation',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          iconpadding: 5,
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Cerebral Palsy',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          iconpadding: 5,
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Paraplegia',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          iconpadding: 5,
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Polio',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          iconpadding: 5,
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Spina bifida',
          information: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies elit turpis, id egestas mauris porttitor in.',
          iconpadding: 5,
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        )
      ],
    );
  }
}