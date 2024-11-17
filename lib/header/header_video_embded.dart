import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'dart:ui_web' as ui;

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
        ..src =
            'https://s3-figma-videos-production-sig.figma.com/video/TEAM/1164863579819707167/848a0f6db68a668157e4accde04747af53d120ec?Expires=1732492800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FqbSO-FyGyxlO~W3UYFhDha-5FwVOG9Ab2krSWHukSIBpQKzWnCTGLOoWYm-OALLwwGmyJUvJTCUr5yDZ8vsydmQS0hmmOyeFsWP9JSo2xj3fi1sViX6AlWOMgYc47jPBcNUJocGUHhNei3T7SiCQeT~YWLEQmojEAYqcr2FLXS9AZjkFEdIbwnim2gNjmFsRSEwTZNm1QsMLAKzGDEbr~jLJ1R-MozBAbyK9fibLla9Sd6rccAZ8XZi1eTCptO3u-vOidV19xUijc8ylBHiDFZTA8NoqNsWKTXyIkPjKgcvv2ZXtpyagid4GtRB15Ic6eK6fS1toQZaTUju6zVamA__' // Use the path to your video file
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
