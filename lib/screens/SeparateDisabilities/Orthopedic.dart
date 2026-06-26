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
          information: 'It involves the surgical removal of a body part, usually a limb, done usually when said limb is severely injured or has a disease that threatens overall health, such as poor blood flow and diabetic complications.',
          iconpadding: 5,
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Cerebral Palsy',
          information: 'This disorder primarily affects movement and muscle control, caused by muscle stiffness, abnormal muscle tone, poor balanace, or rigidity. This does not always involve the whole body, and many might find one part easier to control over the other.',
          iconpadding: 5,
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Paraplegia',
          information: 'This disease causes paralysis or loss of movement and feeling caused by spinal cord damage. Paraplegia affects the lower body (legs), while quadriplegia affects both arms and legs.',
          iconpadding: 5,
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Polio',
          information: 'A highly contagious viral disease that infects the nervous system and can damage nerve cells that control muscles. This may lead to muscle weakness, difficulty moving limbs, and in severe cases, permanent paralysis or disability, especially in the legs.',
          iconpadding: 5,
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Spina bifida',
          information: 'A birth condition where the spine and spinal cord do not fully form during development, which can lead to nerve damage, curved spine, bone and joint conditions, weakness or paralysis in the legs, and problems with walking, bladder, or bowel control.',
          iconpadding: 5,
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        )
      ],
    );
  }
}