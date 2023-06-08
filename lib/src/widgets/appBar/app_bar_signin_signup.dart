// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';


class AppBarSigninSignup extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppBarSigninSignup({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.primaryText,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(  
          color: AppColors.primarySecondaryBackground,
          height: 1,
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
