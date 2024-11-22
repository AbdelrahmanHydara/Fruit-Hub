import 'package:flutter/material.dart';
import 'package:fruits_app/core/helpers/extensions.dart';
import 'package:fruits_app/core/theming/app_text_styles.dart';

AppBar buildAppBar(BuildContext context,{required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    leading: GestureDetector(
      onTap: () {
        context.pop();
      },
      child: Icon(
        Icons.arrow_back_ios_outlined,
        color: Colors.black,
      ),
    ),
    title: Text(
      title,
      style: AppTextStyles.bold19.copyWith(
        color: Colors.black,
      ),
    ),
  );
}
