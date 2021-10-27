import 'package:flutter/material.dart';

import '../../widget/page_view_indicator.dart';
import '../home/home_page.dart';
import 'boarding_1.dart';
import 'boarding_2.dart';
import 'boarding_3.dart';

class BoardingPage extends StatefulWidget {
  const BoardingPage({Key? key}) : super(key: key);

  @override
  State<BoardingPage> createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> {
  final PageController _controller = PageController();
  final List<Widget> _listPage = <Widget>[
    const Boarding1(),
    const Boarding2(),
    const Boarding3(),
  ];
  int _currentIndex = 0;
  bool _isEndView = false;

  Widget _pageView() {
    return PageView(
      controller: _controller,
      onPageChanged: (int index) {
        setState(() {
          _currentIndex = index;
          _isEndView = (index + 1) == _listPage.length;
        });
      },
      children: _listPage,
    );
  }

  Widget _indicator() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PageViewIndicator(
        itemCount: _listPage.length,
        currentIndex: _currentIndex,
      ),
    );
  }

  void _onPressed() {
    if (_isEndView) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const HomePage();
          },
        ),
      );
    } else {
      _controller.nextPage(
        duration: const Duration(
          milliseconds: 400,
        ),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          _pageView(),
          _indicator(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        child: Icon(
          _isEndView ? Icons.done : Icons.navigate_next,
        ),
      ),
    );
  }
}
