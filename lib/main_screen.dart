import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import 'package:turn_digital_dashboard_test/const/responsive.dart';
import 'package:turn_digital_dashboard_test/shares/app_button.dart';
import 'const/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'footer/footer.dart';
import 'footer/privacy_statement.dart';
import 'home/home.dart';
import 'home/models/home_model.dart';

class MainScreen extends StatefulWidget {
 final HomeModel? homeModel;

 const MainScreen({super.key, required this.homeModel});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int defaultScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        backgroundColor: StaticColors.backgroundColor,
        body: ListView(
          shrinkWrap: true,
          children: [
             if (!Responsive.isDesktop(context))
               Container(
                 color: StaticColors.backgroundColor,
                 height: 70,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [

                       SvgPicture.asset('assets/icon/td_logo.svg'),
                       IconButton(
                           icon: const Icon(
                             Icons.menu,
                             color: StaticColors.primaryColor,
                           ),
                           onPressed: () {}

                           ),
                     ],
                   ),
                 ),
               ),
             if (Responsive.isDesktop(context))
               Padding(
                 padding: const EdgeInsets.symmetric(
                     vertical: 10.0, horizontal: 80),
                 child: SizedBox(
                   width: MediaQuery.sizeOf(context).width,
                   height: MediaQuery.sizeOf(context).height * 0.11,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       SvgPicture.asset('assets/icon/td_logo.svg'),
                       const SizedBox(
                         width: 50,
                       ),
                       Container(
                         color: Colors.transparent,
                         height: 100,
                         child: ListView.separated(
                           shrinkWrap: true,
                           scrollDirection: Axis.horizontal,
                           physics: const NeverScrollableScrollPhysics(),
                           itemCount: Constants.header.length,
                           itemBuilder: (BuildContext context, int index) {
                             return InkWell(
                               onTap: () {
                                 setState(() {
                                   defaultScreenIndex = index;
                                 });
                               },
                               child: Column(
                                 mainAxisAlignment:
                                     MainAxisAlignment.center,
                                 crossAxisAlignment:
                                     CrossAxisAlignment.start,
                                 children: [
                                   Text(
                                     Constants.header[index].title
                                         .toUpperCase(),
                                     style: const TextStyle(
                                       color: StaticColors.blackColor,
                                       fontSize: 20,
                                       fontFamily: 'Avenir LT Std',
                                       fontWeight: FontWeight.w300,
                                     ),
                                     textAlign: TextAlign.center,
                                   ),
                                   Container(
                                     height: 5,
                                     width: 27,
                                     padding: const EdgeInsets.all(20),
                                     decoration: BoxDecoration(
                                         color: defaultScreenIndex == index
                                             ? StaticColors.primaryColor
                                             : Colors.transparent,
                                         borderRadius:
                                             BorderRadius.circular(50)),
                                   )
                                 ],
                               ),
                             );
                           },
                           separatorBuilder:
                               (BuildContext context, int index) =>
                                   const SizedBox(
                             width: 40,
                           ),
                         ),
                       ),
                       AppButton(
                           width: MediaQuery.sizeOf(context).width * 0.14,
                           height: 56,
                           buttonColor: StaticColors.primaryColor,
                           buttonTitle: "Contact us",
                           contactUs: true,
                           onPressed: () {}),
                     ],
                   ),
                 ),
               ),
            _buildBody(defaultScreenIndex),
            if (Responsive.isDesktop(context)) Footer(),
            const PrivacyStatement(),

          ],
        ));
  }

  _buildBody(int index) {
    switch (index) {
      case 0:
        return HomePage(
          home: widget.homeModel!,
        );
      case 1:
        return Container();
      case 2:
        return Container();
      case 3:
        return Container();
      case 4:
        return Container();
    }
  }
}
