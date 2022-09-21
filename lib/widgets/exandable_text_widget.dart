import 'package:flutter/material.dart';
class ExandableTextWidget extends StatefulWidget {
  final String text;
  const ExandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExandableTextWidget> createState() => _ExandableTextWidgetState();
}

class _ExandableTextWidgetState extends State<ExandableTextWidget> {
  late String firstHalf;
  late String secondHalf;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
