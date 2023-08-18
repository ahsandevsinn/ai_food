import 'package:ai_food/utils/apptext.dart';
import 'package:ai_food/utils/custom_button.dart';
import 'package:ai_food/utils/custom_textfield.dart';
import 'package:ai_food/utils/sizedbox.dart';
import 'package:ai_food/utils/theme.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<NewPassword> {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: AppText(
                      text: "Forget Password",
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: AppColors.appColor2,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: AppText(
                    text: "Set new password",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.appColor2,
                  ),
                ),
                sizedBox(height * .1, width),
                Opacity(
                  opacity: 0.70,
                  child: Container(
                      width: width * .9,
                      height: height * .6,
                      decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            const BoxShadow(
                              color: AppColors.appColor2,
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ]),
                      child: Stack(
                        children: [
                          Opacity(
                            opacity: 0.1,
                            child: Column(
                              children: [
                                sizedBox(20, 0),
                                Container(
                                  child: Image.asset(
                                    "assets/images/ai_food.png",
                                    height: 350,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20.0,
                              right: 20.0,
                            ),
                            child: Column(
                              children: [
                                sizedBox(height * .1, width),
                                CustomTextField(
                                  controller: newPasswordController,
                                  hintText: "Enter new password",
                                  suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.remove_red_eye,
                                        size: 20,
                                        color: AppColors.appColor2,
                                      )),
                                ),
                                CustomTextField(
                                  controller: newPasswordController,
                                  hintText: "Confirm password",
                                  suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.remove_red_eye,
                                        size: 20,
                                        color: AppColors.appColor2,
                                      )),
                                ),
                                sizedBox(height * 0.28, width),
                                CustomButton(
                                  text: "Confirm",
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
