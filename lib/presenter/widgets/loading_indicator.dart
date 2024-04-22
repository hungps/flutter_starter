import 'package:flutter/material.dart';
import 'package:flutter_starter/presenter/themes/extensions.dart';

class AppLoadingIndicator extends StatelessWidget {
  final double size;
  final Color? color;

  const AppLoadingIndicator({
    super.key,
    this.size = 48,
    this.color,
  });

  const AppLoadingIndicator.small({
    super.key,
    this.size = 24,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: CircularProgressIndicator(color: color),
    );
  }
}

class AppFilledButtonLoadingIndicator extends StatelessWidget {
  const AppFilledButtonLoadingIndicator();

  @override
  Widget build(BuildContext context) {
    return AppLoadingIndicator.small(
      color: context.colors.textOnPrimary,
    );
  }
}
