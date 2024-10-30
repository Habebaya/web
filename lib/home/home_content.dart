import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/stack_image_divider.dart';

class HomeContentDividerWithImage extends StatelessWidget {
  final String scrollDirection;
  final String backgroundImage;
  final Widget topWidget;
  final bool isTopWidget;

  const HomeContentDividerWithImage({
    super.key,
    required this.scrollDirection,
    required this.backgroundImage,
    required this.topWidget,
    required this.isTopWidget
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: 1000,
      width: MediaQuery.of(context).size.width,
      child: Stack(alignment: AlignmentDirectional.centerStart, children: [
        StackImageDivider(
          scrollDirection: scrollDirection,
          backGroundImage: backgroundImage,
          aboveWidget: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Developing For a Purpose",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                  fontSize: 30,
                  letterSpacing: 2.0,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "TurnDigital is aspiring for, always, a better, human 2 human experience.\n"
                "Connecting us all, individuals and organizations, through digital interfaces.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        if(isTopWidget)
        Positioned(top:0 , child: topWidget),
        if(!isTopWidget)
          Positioned(bottom:0 , child: topWidget),





        // Positioned(bottom: 0, child: TechnologyWidget()),
      ]),
    );
  }
}
