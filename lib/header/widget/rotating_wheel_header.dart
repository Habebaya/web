import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import 'package:turn_digital_dashboard_test/const/constants.dart';

class RotatingWheelHeader extends StatefulWidget {
  const RotatingWheelHeader({super.key});

  @override
  State<RotatingWheelHeader> createState() => _RotatingWheelHeaderState();
}

class _RotatingWheelHeaderState extends State<RotatingWheelHeader>
    with TickerProviderStateMixin {
  late AnimationController _controller; // Main rotation controller
  late List<Animation<Offset>> _rotatingOffsets; // Rotating offsets
  double radius = 250.0; // Radius of the circle along which images will move
  int cycleCount = 0; // To track the number of complete cycles

  @override
  void initState() {
    super.initState();
    if (!mounted) {
      _controller.stop();
    }

    // Main rotation animation (repeated)
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              setState(() {
                cycleCount++;
              });
              _updateOffsets();
              // Reset the animation and play again
              _controller.forward(from: 0.0);
            }
          });

    // Start the first rotation cycle
    _controller.forward();

    _updateOffsets();
  }

  // Method to update rotating offsets based on the cycle count
  void _updateOffsets() {
    // Manually defined positions for top, bottom, and sides
    final positions = [
      Offset(0, -radius), // Top
      Offset(radius, -radius / 2), // Top-right side
      Offset(radius, radius / 2), // Bottom-right side
      Offset(0, radius), // Bottom
      Offset(-radius, radius / 2), // Bottom-left side
      Offset(-radius, -radius / 2), // Top-left side
    ];

    _rotatingOffsets =
        List.generate(Constants.headerRoundedImageUrls.length, (index) {
      return Tween<Offset>(
        // Start from the current position and end at the next
        begin: positions[
            (index + cycleCount) % Constants.headerRoundedImageUrls.length],
        end: positions[
            (index + cycleCount + 1) % Constants.headerRoundedImageUrls.length],
      ).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Curves.easeInOut,
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Stack(
        alignment: Alignment.center,
        children:
            List.generate(Constants.headerRoundedImageUrls.length, (index) {
          return AnimatedBuilder(
            animation: _rotatingOffsets[index],
            builder: (context, child) {
              return Transform.translate(
                offset: _rotatingOffsets[index].value,
                child: Constants
                    .headerRoundedImageUrls[index], // Load the SVG image
              );
            },
          );
        }),
      ),
    );
  }
}
