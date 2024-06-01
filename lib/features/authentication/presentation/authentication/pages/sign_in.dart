import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_closet/constants/icon_path.dart';
import 'package:smart_closet/features/authentication/presentation/authentication/widgets/smart_text_field.dart';
import 'package:smart_closet/theme/colors.dart';
import 'package:smart_closet/theme/spacing.dart';
import 'package:smart_closet/widgets/primary_buttons.dart';
import 'package:smart_closet/widgets/texts.dart';

class SignIn extends ConsumerStatefulWidget {
  const SignIn({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInState();
}

class _SignInState extends ConsumerState<SignIn> {
  final bool checkMark = false;
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
                  "Sign In",
                  context,
                ),
                const SizedBox(
                  height: AppSpacings.elementSpacing,
                ),
                SmartTexts.bodyText(
                  "Hi welcome back, you've been missed",
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
                    "Email",
                    context,
                  ),
                ),
                const SizedBox(
                  height: AppSpacings.elementSpacing,
                ),
                const SmartTextField(
                  title: 'example@gmail.com',
                  textInputType: TextInputType.emailAddress,
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
                  height: AppSpacings.elementSpacing,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/new password");
                      },
                      child: SmartTexts.bodyText(
                        "Forgot Password?",
                        context,
                        textDecoration: TextDecoration.underline,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSpacings.elementSpacing,
                ),
                SmartPrimaryButton(
                  title: "Sign In",
                  onPressedButton: () {},
                ),
                const SizedBox(
                  height: AppSpacings.cardPadding + 10,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        color: AppColors.archColor,
                        thickness: 0.5,
                      ),
                    ),
                    SmartTexts.caption(
                      " Or sign up with ",
                      context,
                      color: AppColors.black,
                    ),
                    const Expanded(
                      child: Divider(
                        color: AppColors.archColor,
                        thickness: 0.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSpacings.cardPadding + 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.dimGrey.withOpacity(0.5),
                      border: Border.all(
                        color: AppColors.archColor,
                        width: 0.5,
                      ),
                    ),
                    child: Image.asset(
                      IconPaths.googleIcon,
                      height: 25,
                      width: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSpacings.cardPadding + 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmartTexts.bodyText(
                      "Don't have an acccount?",
                      context,
                      color: AppColors.black,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: SmartTexts.bodyText(
                        "Sign Up",
                        context,
                        color: AppColors.primaryColor,
                        textDecoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
