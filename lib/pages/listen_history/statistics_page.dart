import 'package:auris/blocs/listen_time_bloc.dart';
import 'package:auris/blocs/states/listen_time_state.dart';
import 'package:auris/pages/listen_history/widgets/add_listen_time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                builder: (_) => const AddListenTime(),
              );
            },
          ),
          IconButton(
            icon: const Icon(FontAwesomeIcons.ellipsisVertical),
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CupertinoButton(
                          color: Colors.white,
                          onPressed: () {},
                          child: const Text(
                            "Clear Data",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        CupertinoButton(
                          color: Colors.white,
                          onPressed: () {},
                          child: const Text(
                            "Delete",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: BlocBuilder(
        bloc: context.read<ListenTimeBloc>()..getListenTimes(),
        builder: (BuildContext context, state) {
          if (state is Loaded) {
            return Column(
              children: [
                HeatMap(
                  datasets: state.listenTimes,
                  colorMode: ColorMode.opacity,
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
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: const Text(
                          "2024-01-10",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black38,
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
            );
          }

          return const LinearProgressIndicator();
        },
      ),
    );
  }
}
