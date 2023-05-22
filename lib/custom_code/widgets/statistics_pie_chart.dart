// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_charts/charts.dart';

class StatisticsPieChart extends StatefulWidget {
  const StatisticsPieChart({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _StatisticsPieChartState createState() => _StatisticsPieChartState();
}

class _StatisticsPieChartState extends State<StatisticsPieChart> {
  List<String> categories = [
    "Plants & Flowers",
    "Electronics & hardware",
    "Paper & Books",
    "Fabric & clothes",
    "Wood & Furnitures",
    "Plastic & Bottles",
    "Machine & Machinery",
    "Mirro & Glasses",
    "Biomedical",
    "Others"
  ];
  List<double> percentage = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height,
        width: widget.width,
        child: SfCircularChart(
          tooltipBehavior: TooltipBehavior(enable: true),
          palette: const <Color>[
            Colors.amber,
            Colors.brown,
            Colors.green,
            Colors.redAccent,
            Colors.blueAccent,
            Colors.purple,
            Colors.black,
            Colors.cyan,
            Colors.pink,
            Colors.teal,
          ],
          legend: Legend(
              isVisible: true,
              overflowMode: LegendItemOverflowMode.scroll,
              textStyle: const TextStyle(fontSize: 12),
              position: LegendPosition.bottom
              // position: LegendPosition.l,
              ),
          series: [
            PieSeries<double, String>(
              dataSource: percentage,
              radius: "70",
              legendIconType: LegendIconType.pentagon,
              dataLabelSettings: const DataLabelSettings(
                labelPosition: ChartDataLabelPosition.outside,
                isVisible: true,
              ),
              xValueMapper: (d, i) => categories[i],
              yValueMapper: (d, _) => d,
            ),
          ],
        ));
  }
}
