import 'package:flutter/material.dart';

class TextUtils {
  TextUtils._();

  /// Check if text exceeds maxLines
  static bool isTextOverflowing({
    required String text,
    required TextStyle style,
    required double maxWidth,
    required int maxLines,
  }) {
    final span = TextSpan(text: text, style: style);

    final textPainter = TextPainter(
      text: span,
      maxLines: maxLines,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: maxWidth);

    return textPainter.didExceedMaxLines;
  }
}
