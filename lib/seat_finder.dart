import 'package:flutter/material.dart';

import 'search.dart';
import 'seats.dart';

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
      scrollToSearchSeat();
    });
  }

  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  void scrollToSearchSeat() {
    int index = ((searchSeat - 1) / 8).floor();

    if (index >= 0) {
      _scrollController.animateTo(index * 100.0,
          duration: const Duration(milliseconds: 3000), curve: Curves.ease);
    }
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
              const SizedBox(height: 10),
             
            ],
          ),
        ),
      ),
    );
  }
}
