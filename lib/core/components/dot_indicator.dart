import 'package:flutter/material.dart';

class DotIndicator extends StatefulWidget {
  final int currentIndex;

  const DotIndicator({Key key, this.currentIndex}) : super(key: key);

  @override
  _DotIndicatorState createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {
  Color getColor(int index) {
    return index == widget.currentIndex ? Colors.white : Colors.white30;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 150),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: getColor(0),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 5),
        AnimatedContainer(
          duration: Duration(milliseconds: 150),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: getColor(1),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 5),
        AnimatedContainer(
          duration: Duration(milliseconds: 150),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: getColor(2),
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
