import 'package:flutter/material.dart';

class Boarding3 extends StatelessWidget {
  const Boarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.blueAccent,
      child: const Text(
        'DONE',
        style: TextStyle(
          fontSize: 36.0,
        ),
      ),
    );
  }
}
