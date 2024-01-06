import 'package:flutter/material.dart';

class SeatTile extends StatelessWidget {
  final String seatNumber;
  final String seatType;
  final bool isSearchSeat;
  final String side;
  final Color backgroundColor;

  const SeatTile({
    super.key,
    required this.seatNumber,
    required this.seatType,
    required this.isSearchSeat,
    required this.backgroundColor,
    required this.side,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 68,
      decoration: BoxDecoration(
        borderRadius: side == "UP"
            ? const BorderRadius.vertical(
                bottom: Radius.circular(5),
              )
            : const BorderRadius.vertical(
                top: Radius.circular(5),
              ),
        color: isSearchSeat ? Colors.green : backgroundColor,
      ),
      child: side == "UP"
          ? Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    seatNumber,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  seatType,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Text(
                  seatType,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    seatNumber,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
