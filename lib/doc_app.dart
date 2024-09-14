import 'package:doctor_booking/core/app_consts/app_strings.dart';
import 'package:doctor_booking/core/routing/app_router.dart';
import 'package:doctor_booking/core/routing/routes.dart';
import 'package:doctor_booking/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        title: AppStrings.appName,
        theme: ThemeData(primaryColor: AppColors.primaryColor, scaffoldBackgroundColor: AppColors.whiteColor),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
