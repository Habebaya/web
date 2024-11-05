import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/color_constant.dart';

class AddressTile extends StatelessWidget {
  final String address;

  const AddressTile({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.network(
          "https://static.wixstatic.com/media/d318a1_7c4a7170226d4245aac28f4b59e8c232~mv2.png/v1/fill/w_24,h_25,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/535239.png",
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.15  ,
          child: Text(
            address,
            style: const TextStyle(
                fontSize: 16,

                fontWeight: FontWeight.w400,
                color: ConstantColor.titleBlackColor),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        )
      ],
    );
  }
}
