import 'package:facebook_project/Component%20App/App%20Assets/app_assets.dart';
import 'package:facebook_project/Component%20App/App%20Colors/app_colors.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.white,
      title: const Text("Facebook",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: AppColors.blue),),
      centerTitle: false,
      actions: [
        IconButton(onPressed: (){},
            icon: const ImageIcon(AssetImage(AppAssets.plus))),
        IconButton(onPressed: (){},
            icon: const ImageIcon(AssetImage(AppAssets.search))),
        IconButton(onPressed: (){},
            icon: const ImageIcon(AssetImage(AppAssets.messenger))),
      ],
      bottom:const TabBar(
          indicatorColor: AppColors.blue,
          indicatorWeight: 4,
          labelColor:AppColors.blue,
          unselectedLabelColor: AppColors.gray,
          tabs: [
            Tab(
              icon: ImageIcon(AssetImage(AppAssets.home)),
            ),
            Tab(
              icon: ImageIcon(AssetImage(AppAssets.video)),
            ),
            Tab(
              icon: ImageIcon(AssetImage(AppAssets.store)),
            ),
            Tab(
              icon: ImageIcon(AssetImage(AppAssets.profile)),
            ),
            Tab(
              icon: ImageIcon(AssetImage(AppAssets.notification)),
            ),
            CircleAvatar(
              backgroundImage: AssetImage(AppAssets.account),
            ),
          ]) ,

    );
  }
}
