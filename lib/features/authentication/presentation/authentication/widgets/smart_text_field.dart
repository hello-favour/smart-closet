import 'package:flutter/material.dart';
import 'package:smart_closet/theme/colors.dart';

class SmartTextField extends StatelessWidget {
  final String title;
  final TextInputType textInputType;
  final bool obscureText;
  final Widget? suffix;
  const SmartTextField({
    super.key,
    required this.title,
    required this.textInputType,
    this.obscureText = false,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.w300,
            color: AppColors.archColor,
          ),
      cursorColor: AppColors.dimGrey,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        hintText: title,
        hintStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w300,
              color:AppColors.archColor
            ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.dimGrey,
            width: 0.5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        suffixIcon: suffix,
      ),
      obscureText: obscureText,
      keyboardType: textInputType,
    );
  }
}
