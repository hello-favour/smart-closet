import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_closet/theme/colors.dart';
import 'package:smart_closet/theme/spacing.dart';
import 'package:smart_closet/widgets/primary_buttons.dart';
import 'package:smart_closet/widgets/texts.dart';

class AllowLocation extends ConsumerStatefulWidget {
  const AllowLocation({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileViewState();
}

class _ProfileViewState extends ConsumerState<AllowLocation> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundColor: AppColors.dimGrey,
              child: Icon(
                Icons.location_city,
                size: 90,
                color: AppColors.primaryColor,
              ),
            ),
            SmartTexts.headingSmall(
              "What is Your Location?",
              context,
            ),
            const SizedBox(
              height: AppSpacings.elementSpacing,
            ),
            SmartTexts.bodyText(
              "We need to know your location in order to suggest nearby Services",
              context,
              color: AppColors.archColor,
              center: true,
            ),
            const SizedBox(height: AppSpacings.cardPadding + 20),
            SmartPrimaryButton(
              title: "Allow Location Access",
              onPressedButton: () {},
            ),
          ],
        ),
      ),
    );
  }
}
