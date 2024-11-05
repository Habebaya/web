import 'package:flutter/material.dart';

import '../home/color_constant.dart';
import '../models/get_in_touch_model.dart';
import 'address_tile.dart';

class GetItTouch extends StatelessWidget {
  final GetInTouchModel getItTouch;

  const GetItTouch({super.key, required this.getItTouch});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          getItTouch.title, // Dynamic text
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
            children: getItTouch.socialMedia.map((item) {
          return const Icon(Icons.ac_unit_rounded);
        }).toList()),
        const SizedBox(
          height: 20,
        ),
        AddressTile(address: getItTouch.address),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 30,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              getItTouch.buttonTitle,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
