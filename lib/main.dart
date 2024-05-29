import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_closet/app.dart';
import 'package:smart_closet/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
     ProviderScope(
      child: SmartCloset(),
    ),
  );
}




// Platform  Firebase App Id
// android   1:582586159138:android:31ab4c17f9664e7756fa7b
// ios       1:582586159138:ios:48ff1e0e73ae039f56fa7b