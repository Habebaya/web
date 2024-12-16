import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/api_response.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import 'package:turn_digital_dashboard_test/const/constants.dart';
import 'package:turn_digital_dashboard_test/home/models/home_model.dart';
import 'package:turn_digital_dashboard_test/main_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;
import 'package:turn_digital_dashboard_test/service/home_service.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final bool _isLoading = true;
  ApiResponse? homeModel;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      await Future.wait([
        getHomePageContent(),
         // fetchData1(),
      ]);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) => MainScreen(
                  homeModel: homeModel!.data!,
                )),
      );
    } catch (e) {
      debugPrint("ERROR ${e} ");
    }
  }

  Future<ApiResponse?> getHomePageContent() async {
    const String url = 'http://api.td-dev.turndigital.net/api/public/home/getHomePageContent';

    try {
      final response = await http.get(Uri.parse(url));
      debugPrint('Status Code : ${response.statusCode}');

      if (response.statusCode == 200) {
        final  decodedData = await jsonDecode(response.body);
        debugPrint('DecodedData: $decodedData');

        return homeModel = ApiResponse.fromJson(decodedData);
      } else {
        debugPrint('Failed to load data. Status code: ${response.statusCode}');

      }
    } catch (e) {
      debugPrint('Error: $e');
    }
    return homeModel!;
  }

  // Future<HomeModel> fetchData1() async {
  //   await Future.delayed(
  //       const Duration(seconds: 2)); // Simulating API call delay
  //   debugPrint("Data from API 1 fetched.");
  //   return homeModel = Constants.defaultHomeData;
  //
  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
          child: _isLoading
              ?  Lottie.asset("assets/lottie/loading.json",height: 150,width: 150)
              : const SizedBox.shrink()),
    );
  }
}
