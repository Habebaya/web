import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/constants.dart';
import 'package:turn_digital_dashboard_test/home/models/home_model.dart';
import 'package:turn_digital_dashboard_test/home/offering/offering_model.dart';
import 'package:turn_digital_dashboard_test/main_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;

class LandingPage extends StatefulWidget {
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
      // Call APIs here using Future.wait for multiple requests
      await Future.wait([
        getHomePageContent(),
        //fetchData1(),
      ]);
      // Once all APIs are called, navigate to the home screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) => MainScreen(
                  homeModel: homeModel!,
                )),
      );
    } catch (e) {}
  }

  Future<HomeModel?> getHomePageContent() async {
    const String url =
        'https://dartfrog.azurewebsites.net/api/home/getHomePageContent';

    try {
      final response = await http.get(Uri.parse(url));

      // Check if the response is successful
      if (response.statusCode == 200) {
        final decodedData = jsonDecode(response.body);
        homeModel = HomeModel.fromJson(decodedData);
        print("home title ${homeModel!.offeringModel!.title}");
      } else {
        print('Failed to load data. Status code: ${response.statusCode}');
        homeModel = Constants.defaultOfferingData;
      }
    } catch (e) {
      print('Error: $e');
    }
    return homeModel!;
  }

  Future<void> fetchData1() async {
    await Future.delayed(
        const Duration(seconds: 2)); // Simulating API call delay
    print("Data from API 1 fetched.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: _isLoading
              ? Lottie.asset(
                  'assets/lottie/loading.json',
                  // Use the path to your Lottie JSON file
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                )
              : const SizedBox.shrink()),
    );
  }
}
