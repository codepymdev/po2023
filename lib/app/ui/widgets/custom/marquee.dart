import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MarqueeWidget extends StatelessWidget{
  final ThemeData themeData;
  final String news;

  const MarqueeWidget({Key? key, required this.themeData, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Marquee(
      text: news,
      style: themeData.textTheme.caption,
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      blankSpace: 20.0,
      velocity: 30.0,
      pauseAfterRound: Duration(seconds: 1),
      showFadingOnlyWhenScrolling: true,
      fadingEdgeStartFraction: 0.1,
      fadingEdgeEndFraction: 0.1,
      startPadding: 10.0,
      accelerationDuration: Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
    );
  }
}