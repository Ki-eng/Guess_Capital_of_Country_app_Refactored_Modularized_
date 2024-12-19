import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void showEndOfListAlert(BuildContext context) {
  Alert(
          context: context,
          title: 'Alert',
          desc: 'You have already reached to the end of the list')
      .show();
}
