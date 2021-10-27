import 'package:flutter/material.dart';

class Boarding2 extends StatelessWidget {
  const Boarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.greenAccent,
      child: const Icon(
        Icons.skip_next,
        size: 36.0,
      ),
    );
  }
}
