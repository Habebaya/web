import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import 'package:turn_digital_dashboard_test/shares/mouse_region.dart';

import 'models/footer_model.dart';

class FooterTile extends StatelessWidget {
  final FooterModel footerGridInfo;

  const FooterTile({super.key, required this.footerGridInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MouseRegionWidget(
            onPressed: () {},
            isHovered: false, // Change the cursor on hover
            child: Text(
              footerGridInfo.title, // Dynamic text
              style: const TextStyle(
                  fontSize: 16,
                  color: ConstantColor.whiteColor,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: footerGridInfo.subTitles!.map((item) {
                return InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      item.subTitle,
                      // Dynamic text for each content item
                      style: item.isMainTitle
                          ? const TextStyle(
                              fontSize: 16,
                              color: ConstantColor.whiteColor,
                              fontWeight: FontWeight.w700)
                          : const TextStyle(
                              fontSize: 14,
                              color: ConstantColor.footerSubWhiteColor,
                              fontWeight: FontWeight.w400),
                    ),
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
