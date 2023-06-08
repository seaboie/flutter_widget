// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../text/text_sub_head.dart';

class TextFieldAuth extends StatelessWidget {
  final String textFieldType;
  final String iconName;
  final String hintText;
  final Function(String value) onChanged;

  const TextFieldAuth({
    Key? key,
    required this.textFieldType,
    required this.iconName,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextSubHead(title: textFieldType),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.h),
          height: 40.h,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.primaryFourElementText),
              borderRadius: BorderRadius.all(Radius.circular(15.h))),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 16.w, right: 16.w),
                width: 20.w,
                height: 20.w,
                child: Image.asset(iconName),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 16.w),
                  child: TextField(
                    onChanged: (value) => onChanged(value),
                    keyboardType: TextInputType.multiline,
                    autocorrect: false,
                    obscureText: textFieldType == "Password" ? true : false,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Avenir",
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                    ),
                    decoration: InputDecoration(
                        hintText: hintText,
                        hintStyle: const TextStyle(
                            color: AppColors.primarySecondaryElementText),
                        border: InputBorder.none),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
