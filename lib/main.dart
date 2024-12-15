import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Turn Digital',
        debugShowCheckedModeBanner: false,
        home: LandingPage());
  }
}
