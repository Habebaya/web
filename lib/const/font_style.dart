import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class CustomFontStyle {
  // Method to get the responsive TextStyle based on screen width
  static TextStyle getResponsiveTextStyle(
      BuildContext context, double originalFontSize) {
    // Get the screen width using MediaQuery
    double screenWidth = MediaQuery.sizeOf(context).width;

    // Original font size and original width
    double originalWidth = 1920;

    // Calculate the new font size based on the screen width
    double newFontSize = originalFontSize * (screenWidth / originalWidth);

    // Make sure the font size doesn't go below a minimum size (optional)
    newFontSize = newFontSize < 12 ? 12 : newFontSize;


    // Return the custom TextStyle with dynamic font size and weight
    return TextStyle(
      fontSize: newFontSize, // Dynamic font size
      fontFamily: 'Avenir LT Std', // Custom font family (you can change this)
      fontWeight: FontWeight.bold, // Dynamic font weight
      color: Colors.black
    );
  }
}
