import 'package:flutter/material.dart';
import 'package:leonard_portfolio/view/intro/components/social_media_coloumn.dart';
import '../../../res/constants.dart';
class SocialMediaIconList extends StatelessWidget {
  const SocialMediaIconList({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.sizeOf(context);
    return TweenAnimationBuilder(tween: Tween(begin: 0.0,end: 1.0), duration: const Duration(milliseconds: 200), builder: (context, value, child) {
      return Transform.scale(scale: value,
      child:  Column(

        children: [
          Text(
          "Follow me",
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ),
          const SocialMediaIconColumn(),
        
        ],
      ),
      );
    },);
  }
}


