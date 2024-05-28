import 'package:flutter/material.dart';
import 'package:smart_closet/theme/colors.dart';
import 'package:smart_closet/widgets/texts.dart';

typedef OnPressedButton = void Function();

class SmartPrimaryButton extends StatelessWidget {
  final String title;
  final OnPressedButton onPressedButton;
  const SmartPrimaryButton({
    super.key,
    required this.title,
    required this.onPressedButton,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressedButton,
      child: Container(
        height: 48,
        constraints: const BoxConstraints(minWidth: double.infinity),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),
        color: AppColors.primaryColor,
        child: Center(
          child: SmartTexts.button(
            title,
            context,
          ),
        ),
      ),
    );
  }
}
