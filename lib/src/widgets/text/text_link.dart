// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextLink extends StatelessWidget {
  final String title;
  final Function() onTap;
  const TextLink({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          title,
          style: TextStyle(
              color: AppColors.primaryText,
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.primaryText),
        ),
      ),
    );
  }
}
