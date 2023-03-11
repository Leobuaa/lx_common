import 'package:flutter/material.dart';

import 'common_card_wrapper.dart';

class CommonSettingsGroup extends StatelessWidget {
  const CommonSettingsGroup({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return CommonCardWrapper(
      child: Column(
          children: children.asMap().keys.map((index) {
        if (index == children.length - 1) {
          return children[index];
        } else {
          return Column(
            children: [children[index], const Divider()],
          );
        }
      }).toList()),
    );
  }
}
