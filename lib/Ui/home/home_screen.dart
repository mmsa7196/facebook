import 'package:facebook_project/Component%20App/App%20Assets/app_assets.dart';
import 'package:facebook_project/Component%20App/App%20Colors/app_colors.dart';
import 'package:facebook_project/Ui/widgets/create_story_widgets.dart';
import 'package:facebook_project/Ui/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home";
  final List<String> appAssets = [
    "assets/images/story2.png",
    "assets/images/story3.png",
    "assets/images/story4.png"
  ];
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: CustomScrollView(
          slivers: [
            const HomeAppBar(),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(AppAssets.account),
                      radius: 25,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Expanded(
                        child: Text(
                      "What’s in Your Mind?",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.gray),
                    )),
                    IconButton(
                      onPressed: () {},
                      color: const Color(0xff0DE571),
                      icon: const ImageIcon(AssetImage(
                        AppAssets.gallary,
                      )),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 232,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(16),
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return const CreateStoryWidgets();
                    } else {
                      return SizedBox(
                        width: 140,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(AppAssets.story2,
                                  width: double.infinity, fit: BoxFit.cover),
                            ),
                            Container(
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1000),
                                  border: Border.all(
                                      width: 2, color: AppColors.blue)),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage(AppAssets.got),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 12,
                  ),
                  itemCount: 4,
                ),
              ),
            ),
            SliverList.separated(
              itemBuilder: (context, index) => Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(AppAssets.profilRoute),
                          radius: 28,
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Route",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "8h .",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.gray),
                                  ),
                                  Icon(
                                    Icons.language,
                                    color: AppColors.gray,
                                    size: 14,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_horiz,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    AppAssets.bostRoute2,
                    width: 393,
                    height: 271,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border_outlined,
                          size: 24,
                          color: AppColors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.message_outlined,
                          size: 24,
                          color: AppColors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send_outlined,
                          size: 24,
                          color: AppColors.black,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark,
                          size: 24,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 3,
            ),
          ],
        ),
      ),
    );
  }
}
