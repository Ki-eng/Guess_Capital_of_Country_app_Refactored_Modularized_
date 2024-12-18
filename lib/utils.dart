import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

TextStyle getMainHeadingTextStyle() =>
    TextStyle(fontSize: 24, color: Colors.white);

void showEndOfListAlert(BuildContext context) {
  Alert(
          context: context,
          title: 'Alert',
          desc: 'You have already reached to the end of the list')
      .show();
}
