import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smart_closet/theme/colors.dart';
import 'package:smart_closet/theme/spacing.dart';
import 'package:smart_closet/widgets/texts.dart';
import 'package:smart_closet/widgets/toast.dart';

class AppToast extends StatelessWidget {
  final String message;
  final ToastType toastType;
  final Function() onCancel;

  const AppToast({
    super.key,
    required this.message,
    this.toastType = ToastType.info,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    const success = (
      color: Colors.green,
      iconData: Icons.check_box_outlined,
    );

    const warning = (
      color: AppColors.dimGrey,
      iconData: Icons.warning_amber_outlined,
    );

    const info = (
      color: Colors.blue,
      iconData: Icons.question_mark_sharp,
    );

    const error = (
      color: Colors.red,
      iconData: Icons.error_outline,
    );

    final type = switch (toastType) {
      ToastType.success => success,
      ToastType.warning => warning,
      ToastType.error => error,
      ToastType.info => info,
    };

    return Padding(
      padding: const EdgeInsets.only(
        bottom: kBottomNavigationBarHeight,
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: AppSpacings.defaultBorderRadius,
            color: AppColors.dimGrey,
            border: Border.all(
              width: 2,
              color: type.color,
            )),
        child: ClipRRect(
          borderRadius: AppSpacings.defaultBorderRadius,
          child: Container(
            constraints: BoxConstraints(
              minHeight: kTextTabBarHeight,
              maxWidth: kIsWeb ? 300 : MediaQuery.of(context).size.width,
            ),
            padding: const EdgeInsets.all(AppSpacings.elementSpacing),
            decoration: BoxDecoration(
              color: type.color.withOpacity(.1),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  type.iconData,
                  color: type.color,
                ),
                const SizedBox(width: AppSpacings.elementSpacing),
                Expanded(
                  child: SmartTexts.bodyText(
                    message,
                    context,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: AppSpacings.cardPadding),
                InkWell(
                  onTap: onCancel,
                  child: Icon(
                    Icons.close,
                    color: type.color,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
