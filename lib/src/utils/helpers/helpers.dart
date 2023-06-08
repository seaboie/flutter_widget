import 'package:flutter/material.dart';

class Helpers {
  static showToastCenterMessage({
    required String message,
    Color backgroundColor = AppColors.toastBgColor,
    Color textColor = AppColors.toastTextColor,
  }) {
    return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 4,
      webShowClose: true,
      textColor: textColor,
      backgroundColor: backgroundColor,
      fontSize: 16.sp,
    );
  }
  static showToastBottomMessage({
    required String message,
    Color backgroundColor = AppColors.toastBgColor,
    Color textColor = AppColors.toastTextColor,
  }) {
    return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 4,
      webShowClose: true,
      textColor: textColor,
      backgroundColor: backgroundColor,
      fontSize: 16.sp,
    );
  }
  static showToastTopMessage({
    required String message,
    Color backgroundColor = AppColors.toastBgColor,
    Color textColor = AppColors.toastTextColor,
  }) {
    return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 4,
      webShowClose: true,
      textColor: textColor,
      backgroundColor: backgroundColor,
      fontSize: 16.sp,
    );
  }
}
