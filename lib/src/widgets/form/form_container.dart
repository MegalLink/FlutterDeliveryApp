import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  final List<Widget> children;
  final double marginSeparation;

  const FormContainer(
      {Key? key, required this.children, required this.marginSeparation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * marginSeparation,
          left: 50,
          right: 50),
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54, blurRadius: 15, offset: Offset(0, 0.75))
          ]),
      child: Column(children: children),
    ));
  }
}
