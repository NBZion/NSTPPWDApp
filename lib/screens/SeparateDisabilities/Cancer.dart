import 'package:flutter/material.dart';
import '../SeparateDisability.dart';

class CancerPage extends StatefulWidget {
  const CancerPage({
    super.key
  });

  @override
  CancerPageState createState() => CancerPageState();
}

class CancerPageState extends State<CancerPage> {

  @override
  Widget build(BuildContext context) {
    return SeparateDisabilityState(
      children: [
        InformationLeftLogoRightSection(
          header: 'Cancer',
          information: 'A general term for diseases affecting any part of the body, typically through the fast creation of abnormal cells that begin to invade other parts of the body',
          icon: Icons.people,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Causes',
          information: 'Certain habits such as tobacco and/or alcohol consumption, unhealthy diets, and lack of physical activity can increase risk for cancer. Other chronic diseases can also increase the risk for cancer, such as Hepatitis and HPV.',
          icon: Icons.check_box,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Early Detection',
          information: 'To detect cancer early, it is important to be aware of symptoms of different forms of cancer and have access to clinical evaluation and diagnostic services. Screening can also help find specific cancers, but is not effective for all types of cancer.',
          icon: Icons.check_box,
          iconpadding: 5,
          size: 120,
          paddingvalue: 40
        ),
      ],
    );
  }
}