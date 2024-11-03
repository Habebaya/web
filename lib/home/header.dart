import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/color_constant.dart';
import 'package:turn_digital_dashboard_test/home/constants.dart';
import 'package:turn_digital_dashboard_test/home/responsive.dart';
import 'package:turn_digital_dashboard_test/home/td_logo.dart';

class Header extends StatefulWidget {
  Header({
    Key? key,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool isHovered = false;
  int? hoveredIndex;

  int? currentIndex = 0;

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
      return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.9,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black38),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   const Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(left: 25.0),
                        child: TdLogo(),
                      )),
                  Expanded(
                    flex: 2,
                    child: GridView.builder(
                      shrinkWrap: true,
                      // Allow GridView to size itself
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: Constants.header.length,
                        childAspectRatio: MediaQuery.of(context).size.width * 0.002,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 5,
                      ),
                      itemCount: Constants.header.length,
                      // Total number of items
                      itemBuilder: (context, index) {
                        return  Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MouseRegion(
                              onEnter: (_) => setState(() => hoveredIndex = index),
                              onExit: (_) => setState(() => hoveredIndex = null),
                              child: const Center(
                                child: Text(
                                  "title",
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                                ),
                              ),
                            ),
                           if(hoveredIndex == index)
                             const Iteeem()
                          ],
                        );
                      },
                    ),
                  ),
                ]),
          ));

      // if (isHovered && Constants.header[hoveredIndex!].subTitles.isNotEmpty)...[
      //      Container(
      //        height: 30,
      //        width: 50,
      //        child: ListView.separated(
      //         itemBuilder: (BuildContext context, int index) {
      //           return Text(Constants.header[hoveredIndex!].subTitles[index]
      //               .subTitle);
      //         },
      //         separatorBuilder: (BuildContext context, int index) =>
      //         const SizedBox(width: 45,),
      //         itemCount: Constants.header[hoveredIndex!].subTitles.length),
      //      )
      //       ],
      // );
      return ListView.builder(
        shrinkWrap: true, // Ensures ListView takes up minimal height.
        itemCount: Constants.header.length,
        itemBuilder: (context, index) {
          String title = Constants.header[index].title;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Main List Item with MouseRegion to detect hover
              MouseRegion(
                onEnter: (_) => setState(() => hoveredIndex = index),
                onExit: (_) => setState(() => hoveredIndex = null),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  width: double.infinity,
                  color: Colors.blue.withOpacity(0.3),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              // Reveal sublist if this item is hovered
              if (hoveredIndex == index)
                Container(
                  color: Colors.blue.withOpacity(0.1),
                  child: Column(
                    children: Constants.header[index].subTitles.map((item) {
                      return ListTile(
                        title: Text(item.subTitle),
                      );
                    }).toList(),
                  ),
                ),
            ],
          );
        },
      );
    }
  }
}
class Iteeem extends StatelessWidget {

  const Iteeem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 150,
            width: 100,
            child: const Text("nn")

        ),
      ],
    );
  }
}
