import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_closet/features/authentication/presentation/authentication/widgets/smart_text_field.dart';
import 'package:smart_closet/theme/colors.dart';
import 'package:smart_closet/theme/spacing.dart';
import 'package:smart_closet/widgets/avater/profile_avater.dart';
import 'package:smart_closet/widgets/back_button.dart';
import 'package:smart_closet/widgets/primary_buttons.dart';
import 'package:smart_closet/widgets/texts.dart';

class ProfileView extends ConsumerStatefulWidget {
  const ProfileView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileViewState();
}

class _ProfileViewState extends ConsumerState<ProfileView> {
  @override
  Widget build(BuildContext context) {
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
                    "Complete Your Profile",
                    context,
                  ),
                  const SizedBox(
                    height: AppSpacings.elementSpacing,
                  ),
                  SmartTexts.bodyText(
                    "Don't worry, only can see your profile personal data, No one else will be able to see it.",
                    context,
                    color: AppColors.archColor,
                    center: true,
                  ),
                  const SizedBox(
                    height: AppSpacings.cardPadding,
                  ),
                  const ProfileAvatar(),
                  const SizedBox(
                    height: AppSpacings.cardPadding,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SmartTexts.subtitleButton(
                      "Name",
                      context,
                    ),
                  ),
                  const SizedBox(
                    height: AppSpacings.elementSpacing,
                  ),
                  const SmartTextField(
                    title: 'John Doe',
                    textInputType: TextInputType.name,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: AppSpacings.cardPadding,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SmartTexts.subtitleButton(
                      "Phone Number",
                      context,
                    ),
                  ),
                  const SizedBox(
                    height: AppSpacings.elementSpacing,
                  ),
                  const SmartTextField(
                    title: 'John Doe',
                    textInputType: TextInputType.name,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: AppSpacings.cardPadding,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SmartTexts.subtitleButton(
                      "Gender",
                      context,
                    ),
                  ),
                  const SizedBox(
                    height: AppSpacings.elementSpacing,
                  ),
                  const SmartTextField(
                    title: 'John Doe',
                    textInputType: TextInputType.name,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: AppSpacings.cardPadding + 10,
                  ),
                  SmartPrimaryButton(
                    title: "Complete Profile",
                    onPressedButton: () {},
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
