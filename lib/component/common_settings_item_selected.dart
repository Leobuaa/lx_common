import 'package:flutter/material.dart';

class CommonSettingsItemSelected extends StatelessWidget {
  const CommonSettingsItemSelected(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.onTap,
      this.itemHeight = 40.0});

  final String title;
  final bool isSelected;
  final GestureTapCallback? onTap;
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
              Visibility(visible: isSelected, child: const Icon(Icons.check))
            ],
          ),
        ),
      ),
    );
  }
}
