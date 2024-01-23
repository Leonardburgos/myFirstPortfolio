import 'package:flutter/material.dart';
import '../../../res/constants.dart';

class MenuButton extends StatefulWidget {
  final VoidCallback? onTap;

  const MenuButton({Key? key, this.onTap}) : super(key: key);

  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _rotationController;
  bool isDrawerOpen = false;

  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        TweenAnimationBuilder(
          tween: Tween(begin: 0.0, end: 1.0),
          duration: const Duration(milliseconds: 200),
          builder: (context, value, child) {
            return InkWell(
              onTap: () {
                setState(() {
                  isDrawerOpen = !isDrawerOpen;
                  if (isDrawerOpen) {
                    _rotationController.forward();
                  } else {
                    _rotationController.reverse();
                  }
                });
                if (widget.onTap != null) {
                  widget.onTap!();
                }
              },
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: defaultPadding * 2.0 * value,
                width: defaultPadding * 2.0 * value,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.lightBlueAccent.withOpacity(.5),
                      offset: const Offset(1, 1),
                    ),
                    BoxShadow(
                      color: Colors.blue.withOpacity(.5),
                      offset: const Offset(-1, -1),
                    ),
                  ],
                ),
                child: Center(
                  child: ShaderMask(
                    shaderCallback: (bounds) {
                      return LinearGradient(
                        colors: [Colors.white, Colors.blue.shade900],
                      ).createShader(bounds);
                    },
                    child: RotationTransition(
                      turns: _rotationController,
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: defaultPadding * 1.2 * value,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        const Spacer(
          flex: 5,
        )
      ],
    );
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }
}

