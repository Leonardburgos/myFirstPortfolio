import 'package:flutter/material.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({Key? key, this.height = 510, this.width = 480})
      : super(key: key);
  final double? width;
  final double? height;

  @override
  _AnimatedImageContainerState createState() => _AnimatedImageContainerState();
}

class _AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true); // Repeat the animation loop
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Container(
          height: widget.height!,
          width: widget.width!,
          padding: const EdgeInsets.all(defaultPadding / 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(colors: [
              Colors.blueAccent, // Neon blue color
              Colors.purple,
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
            child: Transform.translate(
              offset: Offset(0, 2 * value), // Move the container up and down
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
          ),
        );
      },
    );
  }
}
