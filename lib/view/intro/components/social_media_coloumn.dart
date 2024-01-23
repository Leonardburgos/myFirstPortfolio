import 'package:flutter/material.dart';
import 'package:leonard_portfolio/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
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
          ), // Add space between icons
        ],
      ),
    );
  }
}
