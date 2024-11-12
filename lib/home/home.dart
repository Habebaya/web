import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/client.dart';
import 'package:turn_digital_dashboard_test/home/divider_image.dart';
import 'package:http/http.dart' as http;
import 'package:turn_digital_dashboard_test/home/offering/offering.dart';
import 'package:turn_digital_dashboard_test/home/technology.dart';
import 'Services/service.dart';
import '../const/color_constant.dart';
import 'boundary/presentation/screen/boundary_section.dart';
import 'engagement/engagment.dart';
import 'footer/footer.dart';
import 'models/home_model.dart';

class HomePage extends StatefulWidget {
  HomeModel? homeModel;

   HomePage({super.key,required this.homeModel});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _scrollOffset = 0.0;
  double _previousOffset = 0.0;
  bool isHovered = false;
  int? hoveredIndex;

  final ScrollController _scrollController = ScrollController();
  String _scrollDirection = "Scroll down to see changes";

  Future<void> getHomePageContent() async {
    print('Data received:');

    const String url =
        'https://dartfrog.azurewebsites.net/api/home/getHomePageContent';

    try {
      // Send the GET request
      print('Get:');

      final response = await http.get(Uri.parse(url));
      print('Getii:');

      // Check if the response is successful
      if (response.statusCode == 200) {
        print('response ${response.statusCode}:');

        // Parse the JSON response
        final data = json.decode(response.body);
        print('Data received: $data');
        // Use `data` as needed in your application
      } else {
        print('Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  void initState() {

    super.initState();

    // _scrollController.addListener(() {
    //   setState(() {
    //     _scrollOffset = _scrollController.offset;
    //   });
    //
    //   // Determine scroll direction
    //   if ((_scrollOffset - 100) > (_previousOffset)) {
    //     setState(() {
    //       _scrollDirection = "Down";
    //       print(_scrollOffset);
    //       print(_previousOffset);
    //
    //       _previousOffset = _scrollOffset;
    //     });
    //   } else if (_scrollOffset < _previousOffset) {
    //     setState(() {
    //       _scrollDirection = "Up";
    //       _previousOffset = _scrollOffset;
    //     });
    //   }
    // });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          OurService(),
          const DividerImage(),
          Offering(homeModel: widget.homeModel,),
          const Engagement(),
          const Client(),
          Technology(),
          BoundarySection(),
          Footer()
        ],
      ),
    );
  }
}
