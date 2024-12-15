import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import 'package:flutter_html/flutter_html.dart';

import 'divider/model/divider_model.dart';

class DividerImage extends StatelessWidget {
  DividerModel? dividerContent;
   DividerImage({super.key,required this.dividerContent});

  @override
  Widget build(BuildContext context) {

    // Split the text into first word and the rest
    List<String> words = dividerContent!.title!.split(' ');
    String firstWord = words.first;
    String restOfText = words.sublist(1).join(' ');

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.asset("assets/background/developing_background.png"),
           Positioned.fill(
            top: 30,
            bottom: 30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: firstWord,
                          style: const TextStyle(
                            color: StaticColors.primaryColor,
                            fontSize: 60,
                            fontFamily: 'Avenir LT Std',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: restOfText,
                          style: const TextStyle(
                            color: StaticColors.whiteColor,
                            fontSize: 60,
                            fontFamily: 'Avenir LT Std',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20,),

                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width * 0.6,
                  //   child:  Text(
                  //     dividerContent!.subtitle!,
                  //     textAlign: TextAlign.center,
                  //     maxLines: 2,
                  //     style: TextStyle(
                  //       color: StaticColors.whiteColor,
                  //       fontSize: 20,
                  //       fontFamily: 'Avenir LT Std',
                  //       fontWeight: FontWeight.w300,
                  //       height: 0,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Html(
                    shrinkWrap: true,
                    data: dividerContent!.subtitle,
                      style: {
                        "h1": Style(
                          fontSize: FontSize(30), // Font size for <h1>
                          fontWeight: FontWeight.bold, // Bold style for header
                          textAlign: TextAlign.center, // Center alignment
                        ),
                        "body": Style(
                          fontSize: FontSize(24), // Font size for <h1>
                          fontWeight: FontWeight.w400, // Bold style for header
                          textAlign: TextAlign.center, // Center alignment
                            fontFamily: 'Avenir LT Std',

                            color: Colors.white
                        ),
                        "b": Style(
                          fontWeight: FontWeight.bold, // Bold for <b>
                        ),

                      },
                  ),
                  )

                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
