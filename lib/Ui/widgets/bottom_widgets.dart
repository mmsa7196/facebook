import 'package:facebook_project/Component%20App/App%20Assets/app_assets.dart';
import 'package:facebook_project/Component%20App/App%20Colors/app_colors.dart';
import 'package:flutter/material.dart';

class BottomWidgets extends StatelessWidget {
  const BottomWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: AppColors.blue,
            elevation: 0,
            backgroundColor: AppColors.white,
            padding: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: AppColors.blue),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Create Account"),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Image.asset(
          AppAssets.metaLogoNaveScreen,
          width: 98,
          height: 40,
        ),
      ],
    );
  }
}
