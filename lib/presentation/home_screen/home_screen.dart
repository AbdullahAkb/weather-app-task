import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_task/presentation/home_screen/widgets/app_bar_widget.dart';
import 'package:weather_app_task/presentation/home_screen/widgets/detail_props_widget.dart';
import 'package:weather_app_task/utils/app_colors.dart';
import 'package:weather_app_task/utils/app_dimensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    String currentDateDay = DateFormat('E, dd MMMM').format(now);
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: AppBarWidget(),
      ),
      body: Container(
        height: AppDimensions.height(context),
        width: AppDimensions.width(context),
        decoration: const BoxDecoration(
            color: Colors.black,
            gradient: LinearGradient(
              colors: AppColors.backGroundGradient,
            )),
        child: ListView(children: [
          SizedBox(
            height: AppDimensions.height(context) * 0.03,
          ),
          Padding(
            padding: AppDimensions.padding20,
            child: Container(
              width: AppDimensions.width(context),
              padding: AppDimensions.allPadding15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.defaultBoxBGC.withOpacity(0.4)),
              child: Column(
                children: [
                  SizedBox(
                    height: AppDimensions.height(context) * 0.01,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      currentDateDay,
                      style: const TextStyle(color: AppColors.greyColor),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Islamabad",
                        style: TextStyle(
                            color: AppColors.whiteColor, fontSize: 30),
                      ),
                      Icon(
                        Icons.more_horiz_rounded,
                        size: 25,
                        color: AppColors.iconColor.withOpacity(0.7),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimensions.height(context) * 0.01,
                  ),
                  const Row(
                    children: [
                      Text(
                        "31",
                        style: TextStyle(
                            color: AppColors.primaryHeadingColor,
                            fontSize: 100),
                      ),
                      Text(
                        "℃",
                        style: TextStyle(
                            color: AppColors.primaryHeadingColor, fontSize: 80),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: AppDimensions.width(context) * 0.02,
                          ),
                          const Icon(Icons.cloud_queue_rounded,
                              color: AppColors.whiteColor),
                          SizedBox(
                            width: AppDimensions.width(context) * 0.02,
                          ),
                          const Text(
                            "Clouds",
                            style: TextStyle(color: AppColors.whiteColor),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: AppColors.whiteColor.withOpacity(0.5),
                          ),
                          Text(
                            "See Details",
                            style: TextStyle(
                                color: AppColors.whiteColor.withOpacity(0.5)),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: AppDimensions.height(context) * 0.02,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // DetailPropsWidget(
                      //   propIcon: Icon(Icons.keyboard_arrow_down_rounded),
                      //   propsName: "Humidity",
                      //   value: 26,
                      // ),
                      DetailPropsWidget(
                        propIcon: Icon(Icons.air_rounded,
                            color: AppColors.whiteColor),
                        propsName: "Pressure",
                        value: 1005,
                      ),
                      DetailPropsWidget(
                        propIcon: Icon(Icons.waves_rounded,
                            color: AppColors.whiteColor),
                        propsName: "Wind",
                        value: 7,
                      ),
                      DetailPropsWidget(
                        propIcon: Icon(Icons.cloud_queue_rounded,
                            color: AppColors.whiteColor),
                        propsName: "Feels Like",
                        value: 26,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
