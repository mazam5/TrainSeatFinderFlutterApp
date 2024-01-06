import 'package:flutter/material.dart';

import 'search.dart';

class SeatFinderWidget extends StatefulWidget {
  const SeatFinderWidget({super.key, required this.title});
  final String title;

  @override
  State<SeatFinderWidget> createState() => _SeatFinderWidgetState();
}

class _SeatFinderWidgetState extends State<SeatFinderWidget> {
  TextEditingController searchController = TextEditingController();
  int searchSeat = 0;
  onFind() {
    setState(() {
      searchSeat = int.parse(searchController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              SearchWidget(
                searchController: searchController,
                onFind: onFind,
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
