import 'package:flutter/material.dart';
import 'package:weather_app_task/utils/app_colors.dart';

class DetailPropsWidget extends StatelessWidget {
  final Icon propIcon;
  final String propsName;
  final double? value;
  const DetailPropsWidget(
      {super.key, required this.propIcon, required this.propsName, this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        propIcon,
        Text(
          propsName,
          style: TextStyle(color: AppColors.whiteColor),
        ),
        Text(
          value.toString(),
          style: TextStyle(color: AppColors.whiteColor),
        ),
      ]),
    );
  }
}
