import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color_constant.dart';

class HeaderImage extends StatefulWidget {
  const HeaderImage({super.key});

  @override
  State<HeaderImage> createState() => _HeaderImageState();
}

class _HeaderImageState extends State<HeaderImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    // Start the animation
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        FadeTransition(
          opacity: _animation,
          child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                  color: ConstantColor.primaryColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(10000))),
        ),
        Center(
          child: Container(
            clipBehavior: Clip.none,
            height: MediaQuery.sizeOf(context).height * 0.76,
            width: MediaQuery.sizeOf(context).width * 0.41,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background/logo_background.png'),
                fit: BoxFit.contain,
              ),
            ),
            child: Center(
              child: Image.asset(
                'assets/gif/td_logo.gif',
                fit: BoxFit.contain,
                height: MediaQuery.sizeOf(context).height * 0.36,
                width: MediaQuery.sizeOf(context).width * 0.2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
