import 'package:flutter/material.dart';

class BottomSheetAppbar extends StatelessWidget {
  final String title;

  const BottomSheetAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.close_outlined,
                size: 26, color: Color.fromRGBO(3, 0, 0, 1)),
          ),
        )
      ],
    );
  }
}
