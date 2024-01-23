import 'package:flutter/material.dart';

import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class AnimatedImageContainer extends StatelessWidget {
  const AnimatedImageContainer({Key? key, this.height = 510, this.width = 480})
      : super(key: key);
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height!,
      width: width!,
      padding: const EdgeInsets.all(defaultPadding / 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(colors: [
          Colors.blueAccent, // Neon blue color
          Colors.white,
        ]),
        boxShadow: const [
          BoxShadow(
            color: Colors.blueAccent,
            offset: Offset(-2, 0),
            blurRadius: 20,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(2, 0),
            blurRadius: 20,
          ),
        ],
      ),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Image.asset(
          'assets/me.png',
          height: Responsive.isLargeMobile(context)
              ? MediaQuery.of(context).size.width * 0.255
              : Responsive.isTablet(context)
                  ? MediaQuery.of(context).size.width * 0.2
                  : 470,
          width: Responsive.isLargeMobile(context)
              ? MediaQuery.of(context).size.width * 0.255
              : Responsive.isTablet(context)
                  ? MediaQuery.of(context).size.width * 0.2
                  : 440,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
