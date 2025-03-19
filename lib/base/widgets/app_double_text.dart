import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {required this.bigText,
      required this.smallText,
      super.key,
      required this.func});
  final String bigText;
  final String smallText;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bigText,
            style: AppStyle.headLineStye2,
          ),
          InkWell(
            onTap: func,
            child: Text(
              smallText,
              style: AppStyle.textStyle.copyWith(color: AppStyle.primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
