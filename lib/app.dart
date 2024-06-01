import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_closet/features/user_profile/presentation/allow_location.dart';
import 'package:smart_closet/router/app_router.dart';

class SmartCloset extends StatelessWidget {
  SmartCloset({super.key});

  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Smart Closet',
        theme: ThemeData(
          fontFamily: "Inter",
        ),
        home: const AllowLocation(),
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
