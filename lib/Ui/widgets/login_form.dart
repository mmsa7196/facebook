import 'package:facebook_project/Component%20App/App%20Colors/app_colors.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const LoginForm({required this.formKey, super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool notVisible = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                value = value ?? "";
                if (value.isEmpty) {
                  return "Email can't be Embty";
                } else if (!value.contains("@")) {
                  return "Enter Valid Email";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                hintText: "Mobile Number or Email Address",
                fillColor: AppColors.blue.withOpacity(0.1),
                filled: true,
                hintStyle: const TextStyle(
                  fontSize: 16,
                  color: AppColors.gray,
                ),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.gray, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    )),
                disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.gray, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    )),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.gray, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    )),
                errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.red, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    )),
                focusedErrorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.red, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    )),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: notVisible,
              validator: (value) {
                value = value ?? "";
                if (value.isEmpty) {
                  return "Password can't be Embty";
                } else if (value.length < 10) {
                  return "Invalid Password";
                } else {
                  return null;
                }
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                  onTap: () {
                    notVisible = !notVisible;
                    setState(() {});
                  },
                  child: Icon(
                      notVisible ? Icons.visibility_off : Icons.visibility),
                ),
                hintText: "Password",
                fillColor: AppColors.blue.withOpacity(0.1),
                filled: true,
                hintStyle: const TextStyle(
                  fontSize: 16,
                  color: AppColors.gray,
                ),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.gray, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    )),
                disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.gray, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    )),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.gray, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    )),
                errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.red, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    )),
                focusedErrorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.red, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
