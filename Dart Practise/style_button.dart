import 'package:flutter/material.dart';

class StyleButton extends StatelessWidget {
  const StyleButton({super.key,
  required this.onPressed,
  required this.child,
  });

  final void Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: onPressed,
      child: Center(child: child),
    );
  }
}