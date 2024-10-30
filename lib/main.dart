import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/header_video_embded.dart';
import 'package:turn_digital_dashboard_test/home/constant.dart';
import 'package:turn_digital_dashboard_test/home/first_divider_text.dart';
import 'package:turn_digital_dashboard_test/home/footer.dart';
import 'package:turn_digital_dashboard_test/home/home_content.dart';
import 'package:turn_digital_dashboard_test/home/responsive.dart';
import 'package:turn_digital_dashboard_test/home/stack_image_divider.dart';
import 'package:turn_digital_dashboard_test/home/technology.dart';
import 'package:turn_digital_dashboard_test/offering.dart';
import 'package:turn_digital_dashboard_test/service.dart';

import 'boundary/presentation/screen/boundary_section.dart';
import 'home/client.dart';
import 'home/header.dart';
import 'home/home_two_content.dart';
import 'home/second_divider_description.dart';
import 'home/video_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Reveal Image on Scroll',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _scrollOffset = 0.0;
  double _previousOffset = 0.0;

  final ScrollController _scrollController = ScrollController();
  String _scrollDirection = "Scroll down to see changes";

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });

      // Determine scroll direction
      if ((_scrollOffset - 100) > (_previousOffset)) {
        setState(() {
          _scrollDirection = "Down";
          print(_scrollOffset);
          print(_previousOffset);

          _previousOffset = _scrollOffset;
        });
      } else if (_scrollOffset < _previousOffset) {
        setState(() {
          _scrollDirection = "Up";
          _previousOffset = _scrollOffset;
        });
      }
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
        backgroundColor: ConstantColor.backgroundColor,
        drawer: const Drawer(),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Header(),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Center(child: HeaderVideoEmbed())),
              OurService(),
              StackImageDivider(
                  scrollDirection: _scrollDirection,
                  backGroundImage: "assets/agile.png",
                  mobileHeight: MediaQuery.of(context).size.height * 0.7,
                  aboveWidget: const FirstDividerText()),
              Offering(),
              StackImageDivider(
                  scrollDirection: _scrollDirection,
                  backGroundImage: "assets/engaged-employees.jpg",
                  mobileHeight: MediaQuery.of(context).size.height * 1,
                  aboveWidget: const SecondDividerDescription()),
              ClientWidget(),
              TechnologyWidget(),
              BoundarySection(),
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
