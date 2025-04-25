import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: BlockStacks()));
}

class BlockStacks extends StatelessWidget {
  const BlockStacks({super.key});

  Widget buildBlock(int number, Color color, double size) {
    return Container(
      width: size,
      height: size,
      color: color,
      alignment: Alignment.center,
      child: Text(
        '$number',
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildTower() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        buildBlock(1, Colors.red, 60),
        buildBlock(2, Colors.yellow, 80),
        buildBlock(3, Colors.green, 100),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            buildTower(),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: buildTower(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: buildTower(),
            ),
          ],
        ),
      ),
    );
  }
}
