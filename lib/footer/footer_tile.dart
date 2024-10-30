import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/constant.dart';
import 'package:turn_digital_dashboard_test/models/footer_model.dart';
import 'package:turn_digital_dashboard_test/shares/mouse_region.dart';


class FooterTile extends StatelessWidget {
  final FooterModel footerGridInfo;

  const FooterTile({super.key, required this.footerGridInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            MouseRegionWidget(
              onPressed: () {},
              isHovered: false, // Change the cursor on hover
              child: Text(
                footerGridInfo.title, // Dynamic text
                style: const TextStyle(
                    fontSize: 20,
                    color: ConstantColor.textColor,
                    fontWeight: FontWeight.w700),
              ),
            ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: footerGridInfo.subTitles.map((item) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      item.subTitle,
                      // Dynamic text for each content item
                      style: item.clickable!
                          ? const TextStyle(
                              fontSize: 20,
                              color: ConstantColor.textColor,
                              fontWeight: FontWeight.w700)
                          : const TextStyle(
                              fontSize: 16,
                              color: ConstantColor.textColor,
                              fontWeight: FontWeight.w400),
                    ),
                  );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
