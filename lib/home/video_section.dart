import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../header_video_embded.dart';

class VideoSection extends StatelessWidget {
  final ScrollController scrollController;

  const VideoSection({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final reveal = (scrollController.offset) / 300;

        return Stack(
          children: [
            Positioned(
                top: -reveal * 200,
                // Move up the image based on scroll
                left: 0,
                right: 0,
                height: constraints.maxHeight,
                child: HeaderVideoEmbed()),
          ],
        );
      },
    );
  }
}
