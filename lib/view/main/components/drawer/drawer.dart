import 'package:flutter/material.dart';
import 'package:leonard_portfolio/view%20model/responsive.dart';
import 'package:leonard_portfolio/view/main/components/drawer/contact_icons.dart';
import 'package:leonard_portfolio/view/main/components/drawer/personal_info.dart';

import '../../../../res/constants.dart';
import 'knowledges.dart';
import 'about.dart';
import 'my_skill.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const About(),
            Container(
              color: bgColor,
              child: const Padding(
                padding: EdgeInsets.all(defaultPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PersonalInfo(),
                    MySKills(),
                    Knowledges(),
                    Divider(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Contact',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ContactIcon(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
