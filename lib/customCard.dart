import 'package:flutter/material.dart';

class Customcard extends StatelessWidget {
  Customcard(
      {this.height,
      this.headingWidget,
      this.bodyWidget,
      this.elevation,
      this.backgroundColor,
      this.shadowColor});

  final double? height;
  final Widget? headingWidget;
  final Widget? bodyWidget;
  final double? elevation;
  final Color? backgroundColor;
  final Color? shadowColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SizedBox(
        height: height,
        child: Card(
          elevation: elevation,
          shadowColor: shadowColor,
          color: backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //As we have created heading and body widget optional,
              //means they can be null but in column we can not pass any nullable widget so here ww wraped heading widget in container widget.
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
    );
  }
}
