import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    this.theme,
    this.overflow,
    this.maxLines,
    this.textAlign,
  });
  final String text;
  final TextStyle? theme;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: theme,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
