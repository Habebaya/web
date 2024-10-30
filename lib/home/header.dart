import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/constant.dart';
import 'package:turn_digital_dashboard_test/home/responsive.dart';
import 'package:turn_digital_dashboard_test/home/td_logo.dart';

class Header extends StatelessWidget {
   Header({
    Key? key,
  }) : super(key: key);
  int _selectedIndex = 0;
  List<NavigationDestination> _destinations = [
    const NavigationDestination(label: 'Home', icon: Icon(Icons.home)),
    const NavigationDestination(label: 'Home', icon: Icon(Icons.home)),
    const NavigationDestination(label: 'Home', icon: Icon(Icons.home)),
  ];

  @override
  Widget build(BuildContext context) {
    if (!Responsive.isDesktop(context)) {
      return Container(
        color: ConstantColor.backgroundColor,
        height: 70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TdLogo(),

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
      );
    } else {
      return Container(
        color: Colors.black45,
        width: MediaQuery
            .sizeOf(context)
            .width,

        height: 70,
        child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
            Expanded(
              flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: TdLogo(),
                )),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("CraftSHip",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),),
                  Text("Pride",style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),),
                  Text("Technology",style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),),
                  Text("DNA",style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),),
                  Text("Carrers",style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),),
                ],
              ),
            )
          ]

        ),
      );
    }
  }
}
