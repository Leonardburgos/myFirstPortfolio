import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'I\'m a Full-Stack Developer with experience on creating  mobile apps and websites,  handling${Responsive.isLargeMobile(context) ? '\n' : ''}every step from ${!Responsive.isLargeMobile(context) ? '\n' : ''}development.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.grey, wordSpacing: 2, fontSize: value),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Also, I\'m a tech enthusiast,${Responsive.isLargeMobile(context) ? '\n' : ''}adept in hardware troubleshooting ${!Responsive.isLargeMobile(context) ? '\n' : ''}and software. Seeking opportunities for continuous learning, growth and skills refinement.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.grey, wordSpacing: 2, fontSize: value),
            ),
          ],
        );
      },
    );
  }
}
