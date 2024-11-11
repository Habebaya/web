import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/Services/service_model.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceTile extends StatelessWidget {
  ServiceModel serviceModel;

  ServiceTile({super.key, required this.serviceModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: ConstantColor.borderColor,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(serviceModel.icon),
          Text(
            serviceModel.title,
            style: const TextStyle(
              color: ConstantColor.blackColor,
              fontSize: 31,
              fontFamily: 'Avenir LT Std',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            serviceModel.description,
            maxLines: 4,
            style: const TextStyle(
                color: ConstantColor.subTitleGrayColor,
                fontSize: 16,
                fontFamily: 'Avenir LT Std',
                fontWeight: FontWeight.w300,
                height: 1),
          ),
          const SizedBox(
            height: 28,
          ),
          Container(
            height: 31,
            width: 31,
            decoration: BoxDecoration(
                color: ConstantColor.primaryColor,
                borderRadius: BorderRadius.circular(50)),
            child: const Center(
                child: Icon(
              Icons.arrow_forward_ios,
              color: ConstantColor.arrowIconColor,
              size: 15,
            )),
          )
        ],
      ),
    );
  }
}
