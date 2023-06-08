import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final String title;
  final Color color;
  final Color? textColor;
  final Function() onTap;
  const ButtonPrimary({
    Key? key,
    required this.title,
    required this.color,
    this.textColor = AppColors.primaryBackground,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 40,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                  color: Colors.grey.withOpacity(0.7))
            ]),
        child: Text(
          title,
          style: TextStyle(
              color: textColor, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
