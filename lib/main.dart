import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/landing_page.dart';
import 'package:turn_digital_dashboard_test/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'Turn Digital',
        debugShowCheckedModeBanner: false,
        // home: InteractiveViewer(     // enable Zoom
        //         // Set limits for zoom
        //         minScale: 0.5,
        //         maxScale: 2.5,
        //         boundaryMargin: EdgeInsets.zero,
        //         child:
           home:      LandingPage());
    //);
    //);
  }
}
