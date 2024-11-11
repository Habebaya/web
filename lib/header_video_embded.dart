import 'dart:html' as html;
import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:ui_web' as ui;
import 'package:blur/blur.dart';
import 'package:flutter/rendering.dart';

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
        ..src = 'assets/video/smoke.mp4' // Use the path to your video file
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


  @override
  Widget build(BuildContext context) {
    return const HtmlElementView(
      viewType: 'videoElement', // This matches the registered view type
    );
  }
}
