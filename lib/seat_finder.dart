import 'package:flutter/material.dart';

import 'search.dart';
import 'all_seats.dart';

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
      _scrollController.animateTo(index * 115.0,
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.78,
                child: ListView.builder(
                  itemCount: 9,
                  controller: _scrollController,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return SeatsWidget(
                      seat1: (index * 8) + 1,
                      seat2: (index * 8) + 2,
                      seat3: (index * 8) + 3,
                      seat4: (index * 8) + 4,
                      seat5: (index * 8) + 5,
                      seat6: (index * 8) + 6,
                      seat7: (index * 8) + 7,
                      seat8: (index * 8) + 8,
                      searchSeat: searchSeat,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
