import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/constants.dart';
import 'package:turn_digital_dashboard_test/home/models/home_model.dart';
import 'package:turn_digital_dashboard_test/main_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final bool _isLoading = true;
  HomeModel? homeModel;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      await Future.wait([
        getHomePageContent(),
        //fetchData1(),
      ]);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) => MainScreen(
                  homeModel: homeModel!,
                )),
      );
    } catch (e) {
      debugPrint("ERROR ${e} ");
    }
  }

  Future<HomeModel?> getHomePageContent() async {
    const String url = 'https://dartfrog.azurewebsites.net/api/home/getHomePageContent';

    try {
      final response = await http.get(Uri.parse(url));
      debugPrint('Status Code : ${response.statusCode}');

      if (response.statusCode == 200) {
        final decodedData = jsonDecode(response.body);
        debugPrint('DecodedData: $decodedData');

        return homeModel = HomeModel.fromJson(decodedData);
      } else {
        debugPrint('Failed to load data. Status code: ${response.statusCode}');
        return homeModel = Constants.defaultHomeData;
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
    return homeModel!;
  }

  // Future<void> fetchData1() async {
  //   await Future.delayed(
  //       const Duration(seconds: 2)); // Simulating API call delay
  //   debugPrint("Data from API 1 fetched.");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: _isLoading
              ? Lottie.asset(
                  'assets/lottie/loading.json',
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                )
              : const SizedBox.shrink()),
    );
  }
}
