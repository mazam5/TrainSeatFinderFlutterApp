import 'package:flutter/material.dart';

class SeatsWidget extends StatefulWidget {
  final int seat1, seat2, seat3, seat4, seat5, seat6, seat7, seat8;
  final int searchSeat;

  const SeatsWidget({
    super.key,
    required this.seat1,
    required this.seat2,
    required this.seat4,
    required this.seat3,
    required this.seat6,
    required this.seat5,
    required this.seat8,
    required this.seat7,
    required this.searchSeat,
  });

  @override
  State<SeatsWidget> createState() => _SeatsWidgetState();
}

class _SeatsWidgetState extends State<SeatsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Colors.grey[200]!,
            width: 1,
          ),
        ),
        color: Colors.grey[200],
      ),
      child: Stack(
        children: [
          // Seat base1
          Positioned(
            top: -5,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(5),
              ),
              height: 20,
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ),

          // Seat base2
          Positioned(
            bottom: -5,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(5),
              ),
              height: 20,
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ),
          // Side Seat base1
          Positioned(
            right: 0,
            top: -5,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(5),
              ),
              height: 20,
              width: MediaQuery.of(context).size.width * 0.21,
            ),
          ),
          // Side Seat base2
          Positioned(
            right: 0,
            bottom: -5,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(5),
              ),
              height: 20,
              width: MediaQuery.of(context).size.width * 0.21,
            ),
          ),
          // each row has 8 seats
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    // seat 1
                    SeatTile(
                      seatNumber: widget.seat1.toString(),
                      seatType: 'LOWER',
                      side: 'UP',
                      isSearchSeat: widget.searchSeat == widget.seat1,
                      backgroundColor: Colors.brown,
                    ),
                    const SizedBox(height: 14),
                    // seat 4
                    SeatTile(
                      seatNumber: widget.seat4.toString(),
                      seatType: 'LOWER',
                      side: 'DOWN',
                      isSearchSeat: widget.searchSeat == widget.seat4,
                      backgroundColor: Colors.brown,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    // seat 2
                    SeatTile(
                      seatNumber: widget.seat2.toString(),
                      seatType: 'MIDDLE',
                      isSearchSeat: widget.searchSeat == widget.seat2,
                      backgroundColor: Colors.blue,
                      side: 'UP',
                    ),
                    const SizedBox(height: 14),
                    // seat 5
                    SeatTile(
                      seatNumber: widget.seat5.toString(),
                      seatType: 'MIDDLE',
                      isSearchSeat: widget.searchSeat == widget.seat5,
                      backgroundColor: Colors.blue,
                      side: 'DOWN',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    // seat 3
                    SeatTile(
                      seatNumber: widget.seat3.toString(),
                      seatType: 'UPPER',
                      isSearchSeat: widget.searchSeat == widget.seat3,
                      backgroundColor: Colors.deepPurple,
                      side: 'UP',
                    ),
                    const SizedBox(height: 14),
                    // seat 6
                    SeatTile(
                      seatNumber: widget.seat6.toString(),
                      seatType: 'UPPER',
                      isSearchSeat: widget.searchSeat == widget.seat6,
                      backgroundColor: Colors.deepPurple,
                      side: 'DOWN',
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 50),

              // Side Lower and Side Upper Berth
              Expanded(
                child: Column(
                  children: [
                    // seat 7
                    SeatTile(
                      seatNumber: widget.seat7.toString(),
                      seatType: 'SIDE LOWER',
                      side: 'UP',
                      isSearchSeat: widget.searchSeat == widget.seat7,
                      backgroundColor: Colors.brown,
                    ),
                    const SizedBox(height: 14),
                    // seat 8
                    SeatTile(
                      seatNumber: widget.seat8.toString(),
                      seatType: 'SIDE UPPER',
                      side: 'DOWN',
                      isSearchSeat: widget.searchSeat == widget.seat8,
                      backgroundColor: Colors.deepPurple,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
