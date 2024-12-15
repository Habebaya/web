import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'dart:ui_web' as ui;

class SmokeVideoBackground extends StatefulWidget {
  @override
  State<SmokeVideoBackground> createState() => _SmokeVideoBackgroundState();
}

class _SmokeVideoBackgroundState extends State<SmokeVideoBackground> {
  @override
  void initState() {
    super.initState();

    _registerVideoElement();
  }

  void _registerVideoElement() {
    ui.platformViewRegistry.registerViewFactory('videoElement', (int viewId) {
      final videoElement = html.VideoElement()
        ..src = "assets/video/smoke.mp4"
        ..muted = true
        ..controls = false
        ..autoplay = true
        ..loop = true
        ..preload = 'auto'
        ..style.cssText = '''
        width: 100%;
        height: 96%;
        position: absolute;
        top: 0;
        left: 0;
        z-index: -1;
        opacity: 0.7; /* Semi-transparent to create a smoke effect */
        object-fit: cover; /* Ensures the video covers the area without distortion */
      ''';

      return videoElement;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const HtmlElementView(
      viewType: 'videoElement', // This matches the registered view type
    );
  }
}
