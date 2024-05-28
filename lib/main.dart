import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_closet/app.dart';

void main() {
  runApp(
    const ProviderScope(
      child: SmartCloset(),
    ),
  );
}
