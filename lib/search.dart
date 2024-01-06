import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  final Function() onFind;
  final TextEditingController searchController;
  final BuildContext context;
  const SearchWidget({
    super.key,
    required this.onFind,
    required this.searchController,
    required this.context,
  });
  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: widget.searchController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.search,
              onFieldSubmitted: (value) {
                if (widget.searchController.text.isNotEmpty) {
                  widget.onFind();
                }
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter seat number';
                }
                if (int.tryParse(value) == null) {
                  return 'Please enter valid seat number';
                }
                if (int.parse(value) < 1 || int.parse(value) > 72) {
                  return 'Please enter seat 1 and 72';
                }
                return null;
              },
              onTapOutside: (context) =>
                  FocusScope.of(widget.context).unfocus(),
              decoration: const InputDecoration(
                hintText: 'Enter Seat Number...',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: widget.onFind,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Find'),
                Icon(Icons.search),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
