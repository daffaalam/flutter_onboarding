import 'package:flutter/material.dart';

import 'src/common/custom_behavior.dart';
import 'src/ui/boarding/boarding_page.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BoardingPage(),
      darkTheme: ThemeData.dark(),
      scrollBehavior: CustomScrollBehavior(),
    );
  }
}
