import 'package:flutter/material.dart';

class CommonSettingsItem extends StatelessWidget {
  const CommonSettingsItem(
      {super.key,
      required this.title,
      this.onTap,
      this.tail = const Icon(
        Icons.arrow_forward_ios,
        size: 17,
      ),
      this.itemHeight = 40.0});

  final String title;
  final GestureTapCallback? onTap;
  final Widget tail;
  final double itemHeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: SizedBox(
        height: itemHeight,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                title,
                style: const TextStyle(fontSize: 17),
              )),
              tail
            ],
          ),
        ),
      ),
    );
  }
}
