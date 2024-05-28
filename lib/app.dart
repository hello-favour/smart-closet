import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmartCloset extends StatelessWidget {
  const SmartCloset({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Smart Closet',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: Container(
          child: const Text("hello"),
        ),
      ),
    );
  }
}
