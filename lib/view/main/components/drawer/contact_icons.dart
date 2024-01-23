import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:leonard_portfolio/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../res/constants.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          
          SocialMediaIcon(
            icon: 'assets/icons/facebook.svg',
            onTap: () => launchUrl(
                Uri.parse('https://www.facebook.com/johnleonard.burgos/')),
          ),
          const SizedBox(width: 20), // Add space between icons
          SocialMediaIcon(
            icon: 'assets/icons/twitter.svg',
            onTap: () =>
                launchUrl(Uri.parse('https://twitter.com/haipotetodesu')),
          ),
          const SizedBox(width: 20), // Add space between icons
          SocialMediaIcon(
            icon: 'assets/icons/gitlab.svg',
            onTap: () =>
                launchUrl(Uri.parse('https://gitlab.com/john.burgos')),
          ),
          const SizedBox(width: 20), // Add space between icons
          SocialMediaIcon(
            icon: 'assets/icons/github.svg',
            onTap: () =>
                launchUrl(Uri.parse('https://github.com/Leonardburgos')),
          ),
          const SizedBox(width: 20),
          SocialMediaIcon(
            icon: 'assets/icons/gmail.svg',
            onTap: () =>
                launchUrl(Uri.parse('mailto:burgosjohnleonard@gmail.com')),
          )
        ],
      ),
    );
  }
}
