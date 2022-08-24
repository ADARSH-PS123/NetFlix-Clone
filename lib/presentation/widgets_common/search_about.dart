import 'package:flutter/material.dart';

class WidgetAbout extends StatelessWidget {
  final String text;
  const WidgetAbout({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
    );
  }
}