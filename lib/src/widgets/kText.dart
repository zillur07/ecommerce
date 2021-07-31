import 'package:flutter/material.dart';

class KText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final String? fontFamily;
  final int? maxLines;

  KText({
    required this.text,
    this.color,
    this.fontSize,
    this.fontFamily,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: TextStyle(
        fontSize: fontSize != null ? fontSize : 14,
        fontFamily: fontFamily != null ? fontFamily : 'Cera Regular',
        color: color != null ? color : Colors.black54,
      ),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      // overflow: TextOverflow.fade,
      // softWrap: true,
      // maxLines: 1,
    );
  }
}
