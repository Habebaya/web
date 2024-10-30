import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:blur/blur.dart';

class WidgetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              // Image.asset(
              //   'assets/image_1.png',
              //   fit: BoxFit.fitWidth,
              //   height: MediaQuery.of(context).size.height,
              Blur(
                blur: 2.5,
                blurColor: Colors.black26,
                child: Image.asset(
                  'assets/image_1.png',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 0,
          child: Container(
            color: Colors.green[100],
            width: MediaQuery.of(context).size.width,
            height: 300,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            color: Colors.green[300],
            width: MediaQuery.of(context).size.width,
            height: 300,
          ),
        ),
      ],
    );
  }
}

class WidgetCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;

  WidgetCard(
      {required this.title, required this.imageUrl, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.asset(imageUrl, width: 50, height: 50),
        title: Text(title),
        subtitle: Text(description),
      ),
    );
  }
}

