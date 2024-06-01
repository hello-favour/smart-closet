import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_closet/providers/profile_image_provider.dart';
import 'package:smart_closet/theme/colors.dart';

class ProfileAvatar extends ConsumerWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileImageNotifier = ref.watch(profileImageProvider);

    return Stack(
      children: <Widget>[
        CircleAvatar(
          radius: 70,
          backgroundColor: AppColors.dimGrey,
          backgroundImage: profileImageNotifier.image != null
              ? FileImage(profileImageNotifier.image!)
              : null,
          child: profileImageNotifier.image == null
              ? const Icon(
                  Icons.person,
                  size: 70,
                  color: AppColors.archColor,
                )
              : null,
        ),
        Positioned(
          right: 10,
          bottom: 5,
          child: CircleAvatar(
            radius: 14,
            backgroundColor: AppColors.primaryColor,
            child: IconButton(
              icon: const Icon(
                CupertinoIcons.photo_camera,
                size: 14,
                color: AppColors.dimGrey,
              ),
              onPressed: () {
                ref.read(profileImageProvider).pickImage();
              },
            ),
          ),
        ),
      ],
    );
  }
}
