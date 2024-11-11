import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OfferingTile extends StatelessWidget {
  bool isFirstItem;
  String title;
  bool isOdd;
  int index;
  bool lastIndex;

  OfferingTile(
      {super.key,
      required this.isFirstItem,
      required this.isOdd,
      required this.title,
      required this.lastIndex,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (index <= 3)
          Expanded(
            child: ItemTitle(
                isFirstItem: isFirstItem,
                isOdd: isOdd,
                title: title,
                lastIndex: lastIndex,
                index: index),
          ),
        if (lastIndex)
          Expanded(
            child: ItemTitle(
                isFirstItem: isFirstItem,
                isOdd: isOdd,
                title: title,
                lastIndex: lastIndex,
                index: index),
          )
      ],
    );

    Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          //   if (index <= 2) ...[
          //     Padding(
          //       padding: const EdgeInsets.only(left: 8.0, bottom: 40),
          //       child: SvgPicture.asset("assets/icon/line_one.svg"),
          //     ),
          //     Positioned(
          //         right: 180,
          //         top: 50,
          //         child: SvgPicture.asset("assets/icon/line_two.svg")),
          //   ],
          //   if (index > 4) Icon(Icons.add)
          // ])
          if (index <= 2) ...[
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 40),
              child: SvgPicture.asset("assets/icon/line_one.svg"),
            ),
          ]
        ]);

    Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              if (index <= 3) ...[
                Padding(
                  padding: isFirstItem
                      ? const EdgeInsets.only(bottom: 10.0)
                      : const EdgeInsets.only(bottom: 0.0),
                  child: const Icon(Icons.add_ic_call_outlined),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.21,
                  child: Text(
                    title + index.toString(),
                    maxLines: 2,
                    style: const TextStyle(
                      color: Color(0xFF565656),
                      fontSize: 20,
                      fontFamily: 'Avenir LT Std',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ],
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            if (index <= 2) ...[
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 40),
                child: SvgPicture.asset("assets/icon/line_one.svg"),
              ),
              Positioned(
                  right: 180,
                  top: 50,
                  child: SvgPicture.asset("assets/icon/line_two.svg")),
            ],
            if (index > 4) Icon(Icons.add)
          ])
        ]);
  }
}

class ItemTitle extends StatelessWidget {
  bool isFirstItem;
  String title;
  bool isOdd;
  int index;
  bool lastIndex;

  ItemTitle(
      {super.key,
      required this.isFirstItem,
      required this.isOdd,
      required this.title,
      required this.lastIndex,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: const Icon(Icons.add_ic_call_outlined),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.21,
            child: Text(
              title + index.toString(),
              maxLines: 2,
              style: const TextStyle(
                color: Color(0xFF565656),
                fontSize: 20,
                fontFamily: 'Avenir LT Std',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
