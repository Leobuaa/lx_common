import 'package:flutter/material.dart';

class CommonCardWrapper extends StatelessWidget {
  const CommonCardWrapper(
      {super.key,
      this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      this.radius = 5.0,
      this.blurRadius = 5.0,
      required this.child});

  final EdgeInsetsGeometry padding;
  final double radius;
  final double blurRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          border: Border.all(
              color: Theme.of(context).colorScheme.background, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).colorScheme.background,
                blurRadius: blurRadius)
          ]),
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}
