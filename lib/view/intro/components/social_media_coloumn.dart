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
            onTap: () => launchUrl(Uri.parse('https://www.linkedin.com/in/hamad-anwar/')),
          ),
          const SizedBox(width: 20), // Add space between icons
          SocialMediaIcon(
            icon: 'assets/icons/twitter.svg',
            onTap: () => launchUrl(Uri.parse('https://github.com/Hamad-Anwar')),
          ),
          const SizedBox(width: 20), // Add space between icons
          const SocialMediaIcon(icon: 'assets/icons/gitlab.svg'),
          const SizedBox(width: 20), // Add space between icons
          const SocialMediaIcon(icon: 'assets/icons/github.svg'),
          const SizedBox(width: 20),
           const SocialMediaIcon(icon: 'assets/icons/upwork.svg'), 
             const SizedBox(width: 20),
           const SocialMediaIcon(icon: 'assets/icons/gmail.svg'), // Add space between icons
        ],
      ),
    );
  }
}
