import 'dart:html' as html;
import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:ui_web' as ui;
import 'package:blur/blur.dart';
import 'package:flutter/rendering.dart';
import 'package:turn_digital_dashboard_test/home/responsive.dart';
import 'package:turn_digital_dashboard_test/home/td_logo.dart';

import 'home/constants.dart';

class HeaderVideoEmbed extends StatefulWidget {
  @override
  State<HeaderVideoEmbed> createState() => _HeaderVideoEmbedState();
}

class _HeaderVideoEmbedState extends State<HeaderVideoEmbed> {
  int? hoveredIndex;
  bool isHovered = false;

  @override
  void initState() {
    super.initState();

    _registerVideoElement();
  }

  void _registerVideoElement() {
    // Register the view type for the HTML video element
    ui.platformViewRegistry.registerViewFactory('videoElement', (int viewId) {
      final videoElement = html.VideoElement()
        ..src = 'assets/run.mp4' // Use the path to your video file
        ..muted = true // Mute the video for autoplay to work on most browsers
        ..controls = false
        ..autoplay = true
        ..loop = true
        ..preload = 'auto'
        ..style.width = '100%' // Set the video width
        ..style.height = 'auto' // Set the video height
        ..style.position =
            'relative' //  Elements are positioned according to the normal flow of the document,
        ..style.bottom = '0px';

      return videoElement;
      //  }
      // Create a video element
    });
  }

  void _HeaderVideoEmbedStateMobile() {
    // Register the view type for the HTML video element
    ui.platformViewRegistry.registerViewFactory('videoElement', (int viewId) {
      final videoElement = html.VideoElement()
        ..src = 'assets/run.mp4' // Use the path to your video file
        ..muted = true // Mute the video for autoplay to work on most browsers
        ..controls = false
        ..autoplay = false
        ..loop = false
        ..preload = 'auto'
        ..style.width = '100%' // Set the video width
        ..style.height = 'auto' // Set the video height
        ..style.position =
            'relative' //  Elements are positioned according to the normal flow of the document,
        ..style.bottom = '0px';

      return videoElement;
      //  }
      // Create a video element
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Blur(
          blur: 1.5,
          blurColor: Colors.black26,
          child:
              //Video
              HtmlElementView(
            viewType: 'videoElement', // This matches the registered view type
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "TurnDigital",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 42,
                ),
                textAlign: TextAlign.left, // Center the text
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Tailoring web technologies to achieve the enterprise objectives.\n"
                "Based on DXP, CMS, or Native, custom solutions are crafted for \n"
                "extensibility, performance, security, and integrability with\n"
                "business applications.",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.left, // Center the text
                softWrap: true,
                maxLines: 4,
              ),
            ],
          ),
        ),

      ],
    );
  }
}
