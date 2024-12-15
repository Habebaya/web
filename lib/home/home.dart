import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/constants.dart';
import 'package:turn_digital_dashboard_test/home/client/client.dart';
import 'package:turn_digital_dashboard_test/home/divider_image.dart';
import 'package:http/http.dart' as http;
import 'package:turn_digital_dashboard_test/home/offering/offering.dart';
import 'package:turn_digital_dashboard_test/technology/technology.dart';
import '../header/header.dart';
import 'services_section/service_section.dart';
import '../const/color_constant.dart';
import 'boundary/presentation/screen/boundary_section.dart';
import 'engagement/engagment.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'models/home_model.dart';

class HomePage extends StatelessWidget {
  HomeModel? home;

  HomePage({super.key, required this.home});

  // double _scrollOffset = 0.0;
  // double _previousOffset = 0.0;
  // bool isHovered = false;
  // int? hoveredIndex;
  // String _scrollDirection = "Scroll down to see changes";
  //
  // Future<void> getHomePageContent() async {
  //   print('Data received:');
  //
  //   const String url =
  //       'https://dartfrog.azurewebsites.net/api/home/getHomePageContent';
  //
  //   try {
  //     // Send the GET request
  //     print('Get:');
  //
  //     final response = await http.get(Uri.parse(url));
  //     print('Getii:');
  //
  //     // Check if the response is successful
  //     if (response.statusCode == 200) {
  //       print('response ${response.statusCode}:');
  //
  //       // Parse the JSON response
  //       final data = json.decode(response.body);
  //       print('Data received: $data');
  //       // Use `data` as needed in your application
  //     } else {
  //       print('Failed to load data. Status code: ${response.statusCode}');
  //     }
  //   } catch (e) {
  //     print('Error: $e');
  //   }
  // }
  //
  // @override
  // void initState() {
  //
  //   super.initState();
  //
  //   // _scrollController.addListener(() {
  //   //   setState(() {
  //   //     _scrollOffset = _scrollController.offset;
  //   //   });
  //   //
  //   //   // Determine scroll direction
  //   //   if ((_scrollOffset - 100) > (_previousOffset)) {
  //   //     setState(() {
  //   //       _scrollDirection = "Down";
  //   //       print(_scrollOffset);
  //   //       print(_previousOffset);
  //   //
  //   //       _previousOffset = _scrollOffset;
  //   //     });
  //   //   } else if (_scrollOffset < _previousOffset) {
  //   //     setState(() {
  //   //       _scrollDirection = "Up";
  //   //       _previousOffset = _scrollOffset;
  //   //     });
  //   //   }
  //   // });
  // }
  //
  // @override
  // void dispose() {
  //   _scrollController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
        clipBehavior: Clip.antiAlias,
        fit: StackFit.passthrough,
        children: [
          Positioned(
              top: MediaQuery.sizeOf(context).height * 0.5,
              right: -5,
              child: SvgPicture.asset(
                "assets/icon/td_back_logo.svg",
              )),
          SingleChildScrollView(
            child: Column(
              children: [
                Header(
                  headerModel: home!.headerModel,
                ),
                Constants.spaceBetweenSections,
                ServiceSection(
                  serviceContent: home!.serviceModel,
                ),
                Constants.spaceBetweenSections,
                DividerImage(
                  dividerContent: home!.dividerModel,
                ),
                Constants.spaceBetweenSections,
                Offering(
                  offeringContent: home!.offeringModel,
                ),
                Constants.spaceBetweenSections,
                Engagement(
                  engagementContent: home!.engagementModel!,
                ),
                Constants.spaceBetweenSections,
                Clients(
                  clientsContent: home!.clientModel!,
                ),
                Constants.spaceBetweenSections,
                TechnologySection(
                  technologyContent: home!.technologyModel,
                ),
                Constants.spaceBetweenSections,
                BoundarySection(
                  boundaryContent: home!.boundaryModel,
                ),
              ],
            ),
          ),
        ]);
  }
}
