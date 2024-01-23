import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../res/constants.dart';

class SocialMediaIcon extends StatefulWidget {
  const SocialMediaIcon({Key? key, required this.icon, this.onTap}) : super(key: key);
  final String icon;
  final VoidCallback? onTap;

  @override
  _SocialMediaIconState createState() => _SocialMediaIconState();
}

class _SocialMediaIconState extends State<SocialMediaIcon> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: InkWell(
        onTap: widget.onTap,
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.4),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: isHovered
                  ? [
                      BoxShadow(
                        color: Colors.blueAccent.withOpacity(0.5),
                        offset: const Offset(1, 1),
                        blurRadius: 50,
                      ),
                      BoxShadow(
                        color: Colors.blueAccent.withOpacity(0.5),
                        offset: const Offset(-1, -1),
                        blurRadius: 50,
                      ),
                    ]
                  : null,
            ),
            child: SvgPicture.asset(
              widget.icon,
              color: Colors.white,
              height: 30,
              width: 30,
            ),
          ),
        ),
      ),
    );
  }
}
