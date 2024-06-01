import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImageNotifier extends ChangeNotifier {
  File? _image;

  File? get image => _image;

  Future<void> pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      _image = File(pickedFile.path);
      notifyListeners();
    }
  }
}
final profileImageProvider = ChangeNotifierProvider((ref) => ProfileImageNotifier());
