import 'package:flutter/material.dart';

class HomeCenter extends StatefulWidget {
  const HomeCenter({super.key});

  @override
  State<HomeCenter> createState() => _HomeCenterState();
}

class _HomeCenterState extends State<HomeCenter> {
  double _scrollOffset = 0.0;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scroll Indicator Example')),
      body: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                Container(
                  height: 100,
                  color: Colors.green[200],
                  alignment: Alignment.center,
                  child: Text('Item ', style: TextStyle(fontSize: 24)),
                ),
                // Animated Positioning Box

                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.ease,
                  height: _scrollOffset > 50 ? 300 : 400,
                  // Adjust height based on scroll
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    'assets/cover.png',
                    height: 200, // Height of the image
                    fit: BoxFit.cover, // Scale the image to cover the space
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                // Image Widget below the animated container

                // List of items

                Container(
                  height: 100,
                  color: Colors.green[400],
                  alignment: Alignment.center,
                  child: Text('Item 2', style: TextStyle(fontSize: 24)),
                ),
                // Bottom Indicator
                Container(
                  height: 300,
                  color: Colors.red,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      'Scroll Position: ${_scrollOffset.toStringAsFixed(2)}',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}