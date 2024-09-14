import 'package:doctor_booking/core/app_consts/app_assets.dart';
import 'package:doctor_booking/core/app_consts/app_sizes.dart';
import 'package:doctor_booking/core/app_consts/app_strings.dart';
import 'package:doctor_booking/core/theme/app_colors.dart';
import 'package:doctor_booking/core/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: AppSizes.ph20, horizontal: AppSizes.ph10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppAssets.appLogo,
                    height: AppSizes.ph38,
                    width: AppSizes.ph38,
                  ),
                  SizedBox(width: AppSizes.ph8),
                  Text(
                    AppStrings.appTitle,
                    style: TextStyles.font24Black700Weight,
                  )
                ],
              ),
              SizedBox(height: AppSizes.ph38),
              Stack(
                children: [
                  SvgPicture.asset(
                    AppAssets.onBoardingBackgroundLogo,
                  ),
                  Container(
                    foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.white,
                        Colors.white.withOpacity(0.0),
                      ],
                      stops: const [0.14, .4],
                    )),
                    child: Image.asset(
                      AppAssets.appLogoPng,
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Text(
                        'Best Doctor \n Appointment App',
                        style: TextStyles.font32BlueBold,
                        textAlign: TextAlign.center,
                      ))
                ],
              ),
              SizedBox(height: AppSizes.ph20),
              Text('Manage and schedule all of your medical appointments easily with\n Docdoc to get a new experience.',
                  textAlign: TextAlign.center, style: TextStyles.font10Black400Weight),
              SizedBox(height: AppSizes.ph32),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(AppColors.primaryColor),
                  minimumSize: WidgetStateProperty.all<Size>(const Size(double.infinity, 52)),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSizes.ph16),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  AppStrings.getStarted,
                  style: TextStyles.font16WhiteBold.copyWith(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
