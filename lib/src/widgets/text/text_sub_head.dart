import 'package:flutter/material.dart';

class TextSubHead extends StatelessWidget {
  final String title;
  const TextSubHead({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontSize: 14.sp,
          fontWeight: FontWeight.bold),
    );
  }
}
