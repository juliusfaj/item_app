import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    this.text,
    this.textColor,
    this.fontSize,
    this.textAlign,
    this.fontWeight,
    this.height,
    this.maxLines,
    this.textOverflow,
  });

  final String? text;
  final Color? textColor;
  final double? fontSize;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final double? height;
  final int? maxLines;
  final TextOverflow? textOverflow;


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    const baseWidth = 420;
    final scaleFactor = screenWidth / baseWidth;
    return Text(
      text ?? '',
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
      overflow: textOverflow,
      style: TextStyle(
        fontWeight: fontWeight ?? FontWeight.w400,
        fontSize: fontSize != null ? fontSize! * scaleFactor : 16 * scaleFactor,
        color: textColor,
        height: height,
      ),
    );
  }
}



