import 'package:auris/pages/listen_history/widgets/add_listen_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listen English"),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.plus),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return const AddListenTime();
                  });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          HeatMap(
            datasets: {
              DateTime(2022, 12, 7): 20,
              DateTime(2023, 1, 6): 10,
            },
            colorMode: ColorMode.opacity,
            showText: false,
            showColorTip: false,
            scrollable: true,
            colorsets: const {
              1: Colors.blue,
            },
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (_, idx) {
                return ListTile(
                  title: const Text(
                    "3h 12m 6s",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  subtitle: const Text(
                    "2024-01-10",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.solidPenToSquare,
                      color: Colors.black54,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
