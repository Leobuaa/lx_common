import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key,
      required this.text,
      this.itemHeight = 48.0,
      this.radius = 24.0,
      this.buttonColor,
      this.textStyle = const TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
      this.onTap});

  final String text;
  final double itemHeight;
  final double radius;
  final Color? buttonColor;
  final TextStyle textStyle;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        height: itemHeight,
        child: Container(
          decoration: BoxDecoration(
              color: buttonColor ?? Theme.of(context).colorScheme.primary,
              border: Border.all(
                  color: Theme.of(context).colorScheme.background, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(radius))),
          child: Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ),
      ),
    );
  }
}
