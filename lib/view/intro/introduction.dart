import 'package:flutter/material.dart';

import 'package:leonard_portfolio/view%20model/responsive.dart';
import 'package:leonard_portfolio/view/intro/components/intro_body.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.01,
          ),
          if (!Responsive.isLargeMobile(context))
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.02,
            ),
          if (!Responsive.isLargeMobile(context))
            const SizedBox(
              width: 10,
            ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.07,
          ),
          const Expanded(
            child: IntroBody(),
          ),
        ],
      ),
    );
  }
}
