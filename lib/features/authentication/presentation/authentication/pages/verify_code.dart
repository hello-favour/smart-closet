import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pinput/pinput.dart';
import 'package:smart_closet/theme/colors.dart';
import 'package:smart_closet/theme/spacing.dart';
import 'package:smart_closet/utils/logger.dart';
import 'package:smart_closet/widgets/back_button.dart';
import 'package:smart_closet/widgets/primary_buttons.dart';
import 'package:smart_closet/widgets/texts.dart';

class VerifyCode extends ConsumerWidget {
  VerifyCode({super.key});

  final TextEditingController pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 50,
      textStyle: Theme.of(context).textTheme.headlineLarge?.copyWith(
            color: AppColors.archColor,
            fontSize: 30,
          ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.archColor,
          width: 0.5,
        ),
        borderRadius: AppSpacings.defaultBorderRadius,
      ),
    );

    final focusedPinTheme = defaultPinTheme;
    final submittedPinTheme = defaultPinTheme;

    return Scaffold(
      body: Container(
        color: AppColors.dimGrey.withOpacity(0.5),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(
          right: AppSpacings.cardPadding,
          left: AppSpacings.cardPadding,
          top: AppSpacings.cardPadding + 20,
        ),
        child: Column(
          children: [
            const SizedBox(height: AppSpacings.elementSpacing),
            Row(
              children: [
                // const SizedBox(width: AppSpacings.cardPadding),
                SmartBackButton(
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: AppSpacings.cardPadding),
            Expanded(
              child: Column(
                children: [
                  SmartTexts.headingSmall(
                    "Verify Code",
                    context,
                  ),
                  const SizedBox(
                    height: AppSpacings.elementSpacing,
                  ),
                  SmartTexts.bodyText(
                    "Please enter the code we just sent to email",
                    context,
                    color: AppColors.archColor,
                    center: true,
                  ),
                  SmartTexts.bodyText(
                    "example@gmail.com",
                    context,
                    color: AppColors.primaryColor,
                    center: true,
                  ),
                  const SizedBox(
                    height: AppSpacings.cardPadding + 10,
                  ),
                  Pinput(
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusedPinTheme,
                    submittedPinTheme: submittedPinTheme,
                    controller: pinCodeController,
                    hapticFeedbackType: HapticFeedbackType.lightImpact,
                    length: 6,
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                    onCompleted: (pin) => smartPrint(pin),
                  ),
                  const SizedBox(
                    height: AppSpacings.cardPadding + 10,
                  ),
                  SmartTexts.bodyText(
                    "Didn't receive OTP?",
                    context,
                    color: AppColors.black,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: SmartTexts.bodyText(
                      "Resend code",
                      context,
                      color: AppColors.primaryColor,
                      textDecoration: TextDecoration.underline,
                    ),
                  ),
                  const SizedBox(
                    height: AppSpacings.cardPadding + 10,
                  ),
                  SmartPrimaryButton(
                    title: "Verify",
                    onPressedButton: () {
                      Navigator.pushNamed(context, "/profile");
                    },
                  ),
                  SizedBox(
                    height: AppSpacings.cardPadding +
                        MediaQuery.paddingOf(context).bottom,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
