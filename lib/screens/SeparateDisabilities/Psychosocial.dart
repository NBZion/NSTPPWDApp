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
          header: 'Psychosocial',
          information: 'Mental or behavioral conditions that challenge individuals in daily function and social interaction.',
          iconpadding: 0,
          icon: Icons.people,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Depression',
          information: 'This is a common mental disorder that involves loss of pleasure or interest in activities over long periods of time. Not only can a depressive episode bring about feelings of sadness, but also poor concentration, low self-worth, and even suicidal thoughts.',
          iconpadding: 5,
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Bipolar',
          information: 'It is a mental health condition that affects mood and energy through manic or depressive episodes, resulting in sudden shifts in mood and inability to concentrate and being easily distracted.',
          iconpadding: 5,
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'Anxiety',
          information: 'This involves an excessive amount of fear or worry about certain situations, resulting in difficulty in decision making or even physical symptoms such as heart palpitations or sweating.',
          iconpadding: 5,
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationLeftLogoRightSection(
          header: 'Schizophrenia',
          information: 'Schizophrenia involves impairements in perception of reality, including delusions and hallucinations, disorganized thinking, and extreme agitation or slowing of movements.',
          iconpadding: 0,
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        ),
        InformationRightLogoLeftSection(
          header: 'ADHD',
          information: 'This is a developmental disorder that involves inattention and hyperactivity frequently, including inappropriate times. It also develops impulsivity, making it difficult to wait for their turn in a conversation.',
          iconpadding: 5,
          icon: Icons.check_box,
          size: 120,
          paddingvalue: 40
        )
      ],
    );
  }
}