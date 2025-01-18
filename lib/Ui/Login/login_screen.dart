import 'package:facebook_project/Component%20App/App%20Assets/app_assets.dart';
import 'package:facebook_project/Component%20App/App%20Colors/app_colors.dart';
import 'package:facebook_project/Ui/home/home_screen.dart';
import 'package:facebook_project/Ui/widgets/bottom_widgets.dart';
import 'package:facebook_project/Ui/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "/login";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool notVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              ListView(
                children: [
                  const SizedBox(
                    height: 36,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppAssets.appRoundedLogo,
                        width: MediaQuery.of(context).size.width * 0.3,
                      ),
                    ],
                  ),
                  LoginForm(
                    formKey: formKey,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushReplacementNamed(
                            context, HomeScreen.routeName);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: AppColors.white,
                      elevation: 0,
                      backgroundColor: AppColors.blue,
                      padding: const EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Login"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      overlayColor: Colors.transparent,
                    ),
                    child: const Text(
                      "Forgotten Password ?",
                      style: TextStyle(
                        color: AppColors.gray,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const BottomWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}
