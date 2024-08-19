import 'package:flutter/material.dart';
import 'package:smart_closet/features/onbaording/model/onboard_model.dart';
import 'package:smart_closet/theme/colors.dart';
import 'package:smart_closet/theme/spacing.dart';
import 'package:smart_closet/widgets/texts.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int currentIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController!.dispose();
  }

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.dimGrey.withOpacity(0.5),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 40),
        child: Stack(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/sign up");
                    },
                    child: SmartTexts.subHeadingSmall("Skip", context),
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: content.length,
                    physics: const NeverScrollableScrollPhysics(),
                    onPageChanged: onPageChanged,
                    itemBuilder: (context, index) {
                      final contentItem = content[index];
                      return Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              contentItem.image,
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.30,
                padding: const EdgeInsets.all(AppSpacings.cardPadding),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: AppSpacings.defaultBorderRadius.topLeft,
                    topRight: AppSpacings.defaultBorderRadius.topRight,
                  ),
                  color: AppColors.dimGrey,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Expanded(child: SizedBox()),
                    content[currentIndex].textWidgets,
                    const SizedBox(height: AppSpacings.cardPadding - 5),
                    SmartTexts.caption(
                      content[currentIndex].description,
                      context,
                      center: true,
                    ),
                    const SizedBox(height: AppSpacings.cardPadding + 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (currentIndex != 0)
                          GestureDetector(
                            onTap: () {
                              if (currentIndex > 0) {
                                setState(() {
                                  currentIndex--;
                                  _pageController!.animateToPage(
                                    currentIndex,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                });
                              }
                            },
                            child: Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              child: const Icon(
                                Icons.arrow_back,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            content.length,
                            (index) => buildDot(context, index),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (currentIndex < content.length - 1) {
                              setState(() {
                                currentIndex++;
                                _pageController!.animateToPage(
                                  currentIndex,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.ease,
                                );
                              });
                            } else {
                              Navigator.pushNamed(context, "/sign up");
                            }
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              color: AppColors.primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_forward,
                              color: AppColors.dimGrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot(BuildContext context, int index) {
    return Container(
      height: 10,
      width: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? AppColors.primaryColor
            : AppColors.archColor,
      ),
    );
  }
}
