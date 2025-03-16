import 'package:flutter/material.dart';

class AnimatedDot extends StatelessWidget {
  const AnimatedDot({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: !isActive ? 36 : 16,
      decoration: BoxDecoration(
        color:
            isActive
                ? Theme.of(context).primaryColor
                : const Color(0xFF868686).withValues(alpha: 0.25),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
