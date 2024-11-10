import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OptionsSlider extends StatefulWidget {
  final List<String> options;
  final ValueChanged<int> onChange;

  const OptionsSlider({
    super.key,
    required this.options,
    required this.onChange,
  });

  @override
  State<OptionsSlider> createState() => _OptionsSliderState();
}

class _OptionsSliderState extends State<OptionsSlider> {
  int? option;

  @override
  void initState() {
    option = null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 92.w,
      height: 10.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              overlayShape: SliderComponentShape.noOverlay,
            ),
            child: SizedBox(
              width: 92.w,
              child: Slider(
                activeColor: option == null ? element : accent,
                inactiveColor: element,
                value: option == null ? 0.01 : option?.toDouble() ?? 0,
                min: 0,
                max: (widget.options.length - 1).toDouble(),
                divisions: widget.options.length - 1,
                onChanged: (double value) {
                  setState(() {
                    option = value.round();
                  });
                  widget.onChange(option!);
                },
              ),
            ),
          ),
          if (option != null)
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            left: option == widget.options.length - 1 || option == null ? null : _calculatePosition(option!),
            right: option == widget.options.length - 1 || option == null ? 0 : null,
            top: 0.h,
            child: Container(
              decoration: BoxDecoration(
                color: accent,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Text(
                option == null ? '' : widget.options[option!],
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: element,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  double getTextWidth(String text) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600, color: element),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    return textPainter.size.width;
  }

  double _calculatePosition(int option) {
    final double textWidth = getTextWidth(widget.options[option]);
    final double screenWidth = 92.w;
    double basePosition = (option / (widget.options.length - 1)) * screenWidth - (textWidth / 2);

    if (option == 0) {
      return 0;
    }

    if (option == widget.options.length - 1) {
      return screenWidth - textWidth;
    }

    return basePosition;
  }
}
