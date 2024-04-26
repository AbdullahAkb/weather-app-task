import 'package:flutter/material.dart';
import 'package:weather_app_task/utils/app_colors.dart';
import 'package:weather_app_task/utils/app_dimensions.dart';

class HourlyTempWidget extends StatelessWidget {
  const HourlyTempWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "12PM",
          style: TextStyle(color: AppColors.whiteColor, fontSize: 20),
        ),
        SizedBox(
          width: AppDimensions.width(context) * 0.02,
        ),
        Row(
          children: [
            Text(
              "30 ℃",
              style: TextStyle(color: AppColors.whiteColor, fontSize: 20),
            ),
            SizedBox(
              width: AppDimensions.width(context) * 0.02,
            ),
            Icon(Icons.cloud_queue_rounded,
                color: AppColors.whiteColor, size: 25),
          ],
        )
      ],
    );
  }
}
