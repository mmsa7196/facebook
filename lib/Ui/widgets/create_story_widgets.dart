import 'package:facebook_project/Component%20App/App%20Assets/app_assets.dart';
import 'package:facebook_project/Component%20App/App%20Colors/app_colors.dart';
import 'package:flutter/material.dart';

class CreateStoryWidgets extends StatelessWidget {
  const CreateStoryWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Column(
              children: [
                Expanded(
                    flex: 5,
                    child: Image.asset(
                      AppAssets.story1,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )),
                const Expanded(
                    flex: 2,
                    child: Center(
                        child: Text(
                      "Create a\nStory",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ))),
              ],
            ),
          ),
          Column(
            children: [
              const Row(),
              const Spacer(
                flex: 3,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(1000),
                  border: Border.all(
                    color: AppColors.white,
                    width: 5,
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  color: AppColors.white,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
