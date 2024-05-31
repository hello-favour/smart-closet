import 'package:flutter/material.dart';
import 'package:smart_closet/theme/colors.dart';
import 'package:smart_closet/theme/spacing.dart';
import 'package:smart_closet/widgets/primary_buttons.dart';
import 'package:smart_closet/widgets/texts.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(AppSpacings.cardPadding),
        child: Column(
          children: [
            const Expanded(child: SizedBox.shrink()),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.55,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: AppColors.archColor,
                      borderRadius: AppSpacings.defaultCircularRadius,
                    ),
                  ),
                ),
                const SizedBox(width: AppSpacings.cardPadding),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: AppColors.archColor,
                          borderRadius: AppSpacings.defaultCircularRadius,
                        ),
                      ),
                      const SizedBox(height: AppSpacings.elementSpacing),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: AppColors.archColor,
                          borderRadius: AppSpacings.defaultCircularRadius,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Expanded(child: SizedBox.shrink()),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "The ",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  TextSpan(
                    text: "Fashion App",
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: AppColors.primaryColor,
                        ),
                  ),
                  TextSpan(
                    text: " That",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacings.cardOutlineWidth),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Makes you look your best",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacings.cardPadding),
            SmartTexts.caption(
              "Lorem ipsum dolor sit met, consectetur adispicing elit, sed do elumsod tempor indidunt",
              context,
              center: true,
            ),
            const SizedBox(height: AppSpacings.elementSpacing),
            SmartPrimaryButton(
              title: "Let's Get Started",
              onPressedButton: () {
                Navigator.pushNamed(context, "/walk through");
              },
            ),
            const SizedBox(height: AppSpacings.cardPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmartTexts.subHeadingSmall(
                  "Already have an acccount?",
                  context,
                ),
                TextButton(
                  onPressed: () {},
                  child: SmartTexts.subHeadingSmall(
                    "Sign In",
                    context,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
