import 'package:flutter/material.dart';

class MyBomb extends StatelessWidget {
  bool revealed;
  final function;

  MyBomb({super.key, required this.revealed, this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
            color: revealed ? Colors.red[800] : Colors.grey[400],
            child: revealed
                ? const Center(
                    child: Text(
                    '💣',
                    style: TextStyle(fontSize: 25),
                  ))
                : const Center(child: Text(''))),
      ),
    );
  }
}
