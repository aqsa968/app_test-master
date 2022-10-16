import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  BorderSide? side;
  EdgeInsetsGeometry? labelPadding;
  Widget label;
  Color? color;
  EdgeInsetsGeometry padding;
  void Function(bool)? onSelected;

  CustomChip(
      {Key? key,
      this.color,
      required this.padding,
      this.side,
      this.labelPadding,
      required this.label,
      this.onSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: InputChip(
        backgroundColor: color,
        padding: padding,
        labelPadding: labelPadding,
        side: side,
        label: label,
        onSelected: onSelected,
      ),
    );
  }
}
