import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_closet/features/authentication/presentation/authentication/widgets/smart_text_field.dart';
import 'package:smart_closet/theme/colors.dart';
import 'package:smart_closet/theme/spacing.dart';
import 'package:smart_closet/widgets/primary_buttons.dart';
import 'package:smart_closet/widgets/texts.dart';

class NewPassword extends ConsumerStatefulWidget {
  const NewPassword({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NewPasswordState();
}

class _NewPasswordState extends ConsumerState<NewPassword> {
  final bool checkMark = false;
  late GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.dimGrey.withOpacity(0.5),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(AppSpacings.cardPadding),
        child: ListView(
          padding: EdgeInsets.only(top: 50.h),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmartTexts.headingSmall(
                  "New Password",
                  context,
                ),
                const SizedBox(
                  height: AppSpacings.elementSpacing,
                ),
                SmartTexts.bodyText(
                  "Your new password must be be different \nfrom previously used passwords",
                  context,
                  color: AppColors.archColor,
                  center: true,
                ),
                const SizedBox(
                  height: AppSpacings.cardPadding,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SmartTexts.subtitleButton(
                    "Password",
                    context,
                  ),
                ),
                const SizedBox(
                  height: AppSpacings.elementSpacing,
                ),
                SmartTextField(
                  title: '#software82',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  suffix: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.visibility),
                  ),
                ),
                const SizedBox(
                  height: AppSpacings.cardPadding,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SmartTexts.subtitleButton(
                    "Confirm Password",
                    context,
                  ),
                ),
                const SizedBox(
                  height: AppSpacings.elementSpacing,
                ),
                SmartTextField(
                  title: '#software82',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  suffix: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.visibility),
                  ),
                ),
                const SizedBox(
                  height: AppSpacings.cardPadding + 10,
                ),
                SmartPrimaryButton(
                  title: "Create New Password",
                  onPressedButton: () {
                    Navigator.pushNamed(context, "/verify code");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
