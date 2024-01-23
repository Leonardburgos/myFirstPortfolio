import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding/2,),
        AreaInfoText(title: 'Contact', text: '+63 915-472-9650'),
        AreaInfoText(title: 'Email', text: 'burgosjohnleonard@gmail.com'),
        AreaInfoText(title: 'Github', text: 'LeonardBurgos'),
        AreaInfoText(title: 'Gitlab', text: '@john.burgos'),
        SizedBox(
          height: defaultPadding,
        ),
        Text('Skills',style: TextStyle(color: Colors.lightBlueAccent),),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
