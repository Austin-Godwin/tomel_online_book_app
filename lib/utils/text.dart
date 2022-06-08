import 'package:flutter/material.dart';
import 'package:tomel_book_app/constants/textstyle.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool multiText;
  final TextOverflow overFlow;
  final Color? color;
  final bool centered;
  final int? maxLines;
  final bool softWrap;

  AppText.heading1({
    Key? key,
    required this.text,
    this.multiText = false,
    this.overFlow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.maxLines,
    this.softWrap = false,
  })  : style = headingStyle1.copyWith(color: color),
        super(key: key);

  AppText.heading2({
    Key? key,
    required this.text,
    this.multiText = false,
    this.overFlow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.maxLines,
    this.softWrap = false,
  })  : style = headingStyle2.copyWith(color: color),
        super(key: key);

  AppText.body1({
    Key? key,
    required this.text,
    this.multiText = false,
    this.overFlow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.maxLines,
    this.softWrap = false,
  })  : style = bodyStyle1.copyWith(color: color),
        super(key: key);

  AppText.body2({
    Key? key,
    required this.text,
    this.multiText = false,
    this.overFlow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.maxLines,
    this.softWrap = false,
  })  : style = bodyStyle1.copyWith(color: color),
        super(key: key);

  AppText.button({
    Key? key,
    required this.text,
    this.multiText = false,
    this.overFlow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.maxLines,
    this.softWrap = false,
  })  : style = bodyStyle1.copyWith(color: color),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: multiText || maxLines != null ? maxLines ?? 999999 : 1,
      overflow: overFlow,
      textAlign: centered ? TextAlign.center : TextAlign.left,
      style: style,
      softWrap: softWrap,
    );
  }
}
