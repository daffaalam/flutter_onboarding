import 'package:flutter/material.dart';

class Boarding1 extends StatelessWidget {
  const Boarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.redAccent,
      child: const Text(
        'Get Started',
        style: TextStyle(
          fontSize: 36.0,
        ),
      ),
    );
  }
}
