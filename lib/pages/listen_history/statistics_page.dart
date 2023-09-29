import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listen English"),
      ),
      body: HeatMap(
        datasets: {
          DateTime(2022, 12, 7): 20,
          DateTime(2023, 1, 6): 10,
        },
        colorMode: ColorMode.opacity,
        showText: false,
        showColorTip: false,
        scrollable: true,
        colorsets: const {
          1: Colors.green,
        },
      ),
    );
  }
}
