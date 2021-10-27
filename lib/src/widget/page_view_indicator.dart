import 'package:flutter/material.dart';

class PageViewIndicator extends StatelessWidget {
  const PageViewIndicator({
    Key? key,
    required this.itemCount,
    required this.currentIndex,
    this.activeColor = const Color(0xFF000000),
    this.inactiveColor = const Color(0xFF9E9E9E),
    this.size,
    this.margin,
  }) : super(key: key);

  final int itemCount;
  final int currentIndex;
  final Color activeColor;
  final Color inactiveColor;
  final double? size;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List<Widget>.generate(
        itemCount,
        (int index) => Container(
          decoration: BoxDecoration(
            color: index == currentIndex ? activeColor : inactiveColor,
            shape: BoxShape.circle,
          ),
          width: size ?? 8.0,
          height: size ?? 8.0,
          margin: margin ?? const EdgeInsets.all(2.0),
        ),
      ),
    );
  }
}
