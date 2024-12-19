import 'package:flutter/material.dart';

class Customcard extends StatelessWidget {
  Customcard(
      {this.height,
      this.headingWidget,
      this.bodyWidget,
      this.elevation,
      this.backgroundColor,
      this.shadowColor,
      this.onPress});

  final double? height;
  final Widget? headingWidget;
  final Widget? bodyWidget;
  final double? elevation;
  final Color? backgroundColor;
  final Color? shadowColor;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SizedBox(
        height: height,
        child: GestureDetector(
          onTap: onPress,
          child: Card(
            elevation: elevation,
            shadowColor: shadowColor,
            color: backgroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //As we have made the heading and body widgets optional, meaning they can be null,
                //we cannot pass a nullable widget directly into a column. Therefore, we have wrapped the heading widget in a container.

                Container(
                  child: headingWidget,
                ),
                Container(
                  child: bodyWidget,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
