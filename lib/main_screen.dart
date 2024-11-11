import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import 'package:turn_digital_dashboard_test/const/responsive.dart';
import 'package:turn_digital_dashboard_test/shares/app_button.dart';

import 'const/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'header/header.dart';
import 'home/home.dart';
import 'home/td_logo.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int defaultScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        backgroundColor: ConstantColor.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Header(),
                  if (!Responsive.isDesktop(context))
                    Container(
                      color: ConstantColor.backgroundColor,
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
                                  color: ConstantColor.primaryColor,
                                ),
                                onPressed: () {}

                                // onPressed:
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
                            SizedBox(
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
                                            color: ConstantColor.blackColor,
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
                                                  ? ConstantColor.primaryColor
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
                                buttonColor: ConstantColor.primaryColor,
                                buttonTitle: "Contact us",
                                onPressed: () {}),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
              _buildBody(defaultScreenIndex),
            ],
          ),
        ));
  }

  _buildBody(int index) {
    switch (index) {
      case 0:
        defaultScreenIndex = 0;
        return const HomePage();
      case 1:
        defaultScreenIndex = 1;
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
