import 'package:flutter/material.dart';
import 'package:smart_closet/constants/image_path.dart';
import 'package:smart_closet/theme/colors.dart';

// class OnboardModel {
//   String image;
//   List<TextSpan> richText;
//   String description;

//   OnboardModel({
//     required this.image,
//     required this.richText,
//     required this.description,
//   });
// }

// List<OnboardModel> content = [
//   OnboardModel(
//     image: ImagePaths.guy1,
//     richText: [
//       const TextSpan(
//         text: "Seamless",
//         style: TextStyle(
//           fontSize: 25,
//           color: AppColors.primaryColor,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       const TextSpan(
//         text: "Shopping",
//         style: TextStyle(
//           fontSize: 25,
//           color: AppColors.black,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       const TextSpan(
//         text: "Exprience",
//         style: TextStyle(
//           fontSize: 25,
//           color: AppColors.black,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     ],
//     description:
//         "Filler text is text that shares some characteristics of a real written text, but is random or otherwise generated.",
//   ),
//   OnboardModel(
//     image: ImagePaths.lady2,
//     richText: [
//       const TextSpan(
//         text: "Wishing: Where",
//         style: TextStyle(
//           fontSize: 25,
//           color: AppColors.black,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       const TextSpan(
//         text: "Fashion",
//         style: TextStyle(
//           fontSize: 25,
//           color: AppColors.primaryColor,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       const TextSpan(
//         text: "Dreams",
//         style: TextStyle(
//           fontSize: 25,
//           color: AppColors.primaryColor,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       const TextSpan(
//         text: "Begin",
//         style: TextStyle(
//           fontSize: 25,
//           color: AppColors.black,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     ],
//     description:
//         "Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.",
//   ),
//   OnboardModel(
//     image: ImagePaths.guy3,
//     richText: [
//       const TextSpan(
//         text: "Swift ",
//         style: TextStyle(
//           fontSize: 25,
//           color: AppColors.primaryColor,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       const TextSpan(
//         text: "and ",
//         style: TextStyle(
//           fontSize: 30,
//           color: Colors.black,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       const TextSpan(
//         text: "Reliable",
//         style: TextStyle(
//           fontSize: 30,
//           color: AppColors.primaryColor,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       const TextSpan(
//         text: "Delivery",
//         style: TextStyle(
//           fontSize: 30,
//           color: AppColors.black,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     ],
//     description:
//         "Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh.",
//   ),
// ];

class OnboardModel {
  String image;
  Column textWidgets;
  String description;

  OnboardModel({
    required this.image,
    required this.textWidgets,
    required this.description,
  });
}

List<OnboardModel> content = [
  OnboardModel(
    image: ImagePaths.guy1,
    textWidgets: Column(
      children: [
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "Seamless ",
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "Shopping",
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "Experience",
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    description:
        "Filler text is text that shares some characteristics of a real written text, but is random or otherwise generated.",
  ),
  OnboardModel(
    image: ImagePaths.lady2,
    textWidgets: Column(
      children: [
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "Swift ",
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "and ",
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "Reliable ",
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "Delivery",
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    description:
        "Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.",
  ),
  OnboardModel(
    image: ImagePaths.guy3,
    textWidgets: Column(
      children: [
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "Wishlist: Where ",
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "Fashion",
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "Dreams ",
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "Begin",
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    description:
        "Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh.",
  ),
];
