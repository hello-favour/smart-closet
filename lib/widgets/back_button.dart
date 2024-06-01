import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartBackButton extends StatelessWidget {
  final VoidCallback onTap;
  const SmartBackButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      padding: const EdgeInsets.all(0),
      constraints: const BoxConstraints(
        maxWidth: 30,
        minHeight: 30,
      ),
      icon: const Icon(CupertinoIcons.arrow_left, size: 30),
    );
  }
}