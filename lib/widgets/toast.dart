import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class ToastHelper {
  static void showToast(
    BuildContext context, {
    required String title,
    required String description,
    required ToastificationType toastificationType,
  }) {
    toastification.show(
      context: context,
      title: Text(title),
      type: toastificationType,
      description: Text(description),
      style: ToastificationStyle.fillColored,
      backgroundColor: Colors.green,
      foregroundColor: Colors.black,
      icon: const Icon(Icons.check),
      showProgressBar: false,
      primaryColor: Colors.green,
      autoCloseDuration: const Duration(microseconds: 300),
    );
  }
}

enum ToastType { success, warning, info, error }
