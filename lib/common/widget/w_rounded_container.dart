import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final backgroundColor;
  final double radius;
  final Color? bgclr;
  const RoundedContainer({
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    this.radius = 20,
    this.backgroundColor = Colors.black,
    this.bgclr,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgclr ?? context.appColors.roundedLayoutBackground,
        borderRadius: BorderRadius.circular(radius),
      ),
      padding: padding,
      child: child,
    );
  }
}
