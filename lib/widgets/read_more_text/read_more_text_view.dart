import 'package:flutter/material.dart';
import 'package:flutter_read_more_text_view/core/constants/app_colors.dart';
import 'package:flutter_read_more_text_view/core/utils/text_utils.dart';
import 'read_more_controller.dart';

class ReadMoreTextView extends StatefulWidget {
  final String text;
  final int maxLines;

  final TextStyle? textStyle;
  final TextStyle? actionTextStyle;

  final String readMoreText;
  final String readLessText;

  final Duration animationDuration;

  const ReadMoreTextView({
    super.key,
    required this.text,
    this.maxLines = 3,
    this.textStyle,
    this.actionTextStyle,
    this.readMoreText = "Read More",
    this.readLessText = "Read Less",
    this.animationDuration = const Duration(milliseconds: 300),
  });

  @override
  State<ReadMoreTextView> createState() => _ReadMoreTextViewState();
}

class _ReadMoreTextViewState extends State<ReadMoreTextView> {
  final ReadMoreController _controller = ReadMoreController();
  bool _isOverflowing = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _checkOverflow());
  }

  void _checkOverflow() {
    final style = widget.textStyle ?? const TextStyle();

    final isOverflow = TextUtils.isTextOverflowing(
      text: widget.text,
      style: style,
      maxWidth: context.size!.width,
      maxLines: widget.maxLines,
    );

    if (mounted) {
      setState(() => _isOverflowing = isOverflow);
    }
  }


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedSize(
              duration: widget.animationDuration,
              curve: Curves.easeInOut,
              child: Text(
                widget.text,
                maxLines: _controller.isExpanded ? null : widget.maxLines,
                overflow: TextOverflow.fade,
                style: widget.textStyle,
              ),
            ),

            if (_isOverflowing)
              GestureDetector(
                onTap: _controller.toggle,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    _controller.isExpanded
                        ? widget.readLessText
                        : widget.readMoreText,
                    style: widget.actionTextStyle ??
                        const TextStyle(
                          color: AppColors.readMore,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
