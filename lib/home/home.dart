import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/divider_image.dart';
import 'package:turn_digital_dashboard_test/home/header.dart';
import 'package:http/http.dart' as http;
import 'package:turn_digital_dashboard_test/home/second_divider_description.dart';
import 'package:turn_digital_dashboard_test/home/stack_image_divider.dart';
import 'package:turn_digital_dashboard_test/home/technology.dart';
import '../boundary/presentation/screen/boundary_section.dart';
import '../offering/offering.dart';
import 'Services/service.dart';
import 'client.dart';
import 'color_constant.dart';
import 'first_divider_text.dart';
import 'footer.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

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

    const String url = 'https://dartfrog.azurewebsites.net/api/home/getHomePageContent';


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
    getHomePageContent();

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
    return Scaffold(
        backgroundColor: ConstantColor.backgroundColor,
        drawer: const Drawer(),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Header(),
              OurService(),
              DividerImage(),
              const Offering(),

              SizedBox(height:50 ,),
              // StackImageDivider(
              //     scrollDirection: _scrollDirection,
              //     backGroundImage: "assets/agile.png",
              //     mobileHeight: MediaQuery.of(context).size.height * 0.7,
              //     aboveWidget: const FirstDividerText()),
              // StackImageDivider(
              //     scrollDirection: _scrollDirection,
              //     backGroundImage: "assets/engaged-employees.jpg",
              //     mobileHeight: MediaQuery.of(context).size.height * 1,
              //     aboveWidget: const SecondDividerDescription()),
              // ClientWidget(),
              // TechnologyWidget(),
              // BoundarySection(),
              Footer()
            ],
          ),
        )

      // Stack(
      //   children: [
      //     if (Responsive.isDesktop(context))
      //       VideoSection(scrollController: _scrollController),
      //     // Scrollable Content
      //     SingleChildScrollView(
      //       controller: _scrollController,
      //       child: Column(
      //         children: [
      //           /// Top Spacer
      //           Responsive.isDesktop(context)
      //               ? SizedBox(height: MediaQuery.of(context).size.height * 0.8)
      //               : SizedBox(
      //                   width: MediaQuery.of(context).size.width,
      //                   height: MediaQuery.of(context).size.height * 0.4,
      //                   child: Center(child: HeaderVideoEmbed())),
      //           HomeContentDividerWithImage(
      //             scrollDirection: _scrollDirection,
      //             backgroundImage: "assets/agile.png",
      //             topWidget: OurService(),
      //             isTopWidget: true,
      //           ),
      //           HomeContentWithImage(
      //               scrollDirection: _scrollDirection,
      //               backgroundImage: "assets/engaged-employees.jpg",
      //               topWidget: const Offering(),
      //               bottomWidget: ClientWidget()),
      //           TechnologyWidget(),
      //           BoundarySection(),
      //
      //           Footer()
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
