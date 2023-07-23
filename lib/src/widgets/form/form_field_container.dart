import 'package:flutter/material.dart';

class FormFieldContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;

  const FormFieldContainer({required this.child, Key? key, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: margin ?? const EdgeInsets.symmetric(horizontal: 40),
        child: child);
  }
}
