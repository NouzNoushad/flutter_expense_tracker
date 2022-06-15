import 'package:expense_tracker_ui/model/percentage.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CircleProgressChart extends StatefulWidget {
  const CircleProgressChart({Key? key}) : super(key: key);

  @override
  State<CircleProgressChart> createState() => _CircleProgressChartState();
}

class _CircleProgressChartState extends State<CircleProgressChart> {
  final List<Percentage> percentage = PercentageList;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: percentage.length,
        itemBuilder: (context, index) {
          final percentList = percentage[index];
          return Container(
            margin: const EdgeInsets.only(right: 10),
            width: 85,
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 6,
                ),
                CircularPercentIndicator(
                  radius: 25,
                  lineWidth: 5,
                  percent: percentList.percent / 100,
                  backgroundColor: Colors.pink.shade200,
                  progressColor: Colors.purple,
                  backgroundWidth: 1,
                  center: Text(
                    "${percentList.percent}%",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  percentList.categories,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                ),
                Text(
                  "\$${percentList.price}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
