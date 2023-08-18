import 'package:ai_food/utils/custom_textfield.dart';
import 'package:ai_food/utils/sizedbox.dart';
import 'package:flutter/material.dart';

import '../../utils/apptext.dart';
import '../../utils/theme.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: "Sign Up",
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: AppColors.appColor2,
                        ),
                        AppText(
                          text: "Sign Up to Continue",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.appColor2,
                        ),
                      ],
                    ),
                  ),
                ),
                sizedBox(40, 0),
                Opacity(
                  opacity: 0.70,
                  child: Container(
                      width: width * .9,
                      // height: height * .6,
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
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0, top: 20.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AppText(
                                          text: "Sign in",
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.appColor2,
                                        ),
                                        Column(
                                          children: [
                                            AppText(
                                              text: "Sign up",
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.lightBlack
                                                  .withOpacity(0.25),
                                            ),
                                            sizedBox(3, 0),
                                            Container(
                                              height: 3,
                                              width: width * .2,
                                              color: AppColors.appColor2,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    sizedBox(height * 0.050, 0),
                                    CustomTextFormField(
                                      cursorColor: AppColors.appColor2,
                                      controller: emailController,
                                      hintText: "Email full name",
                                      hintStyle: const TextStyle(
                                          color: AppColors.appColor2,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    sizedBox(5, 0),
                                    CustomTextFormField(
                                      cursorColor: AppColors.appColor2,
                                      controller: emailController,
                                      hintText: " Enter email ",
                                      hintStyle: const TextStyle(
                                          color: AppColors.appColor2,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    sizedBox(5, 0),
                                    CustomTextFormField(
                                      cursorColor: AppColors.appColor2,
                                      controller: emailController,
                                      hintText: " Enter mobile number ",
                                      hintStyle: const TextStyle(
                                          color: AppColors.appColor2,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    sizedBox(5, 0),
                                    CustomTextFormField(
                                      cursorColor: AppColors.appColor2,
                                      controller: emailController,
                                      hintText: " Enter password",
                                      suffixIcon: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.remove_red_eye,
                                            size: 20,
                                            color: AppColors.appColor2,
                                          )),
                                      hintStyle: const TextStyle(
                                          color: AppColors.appColor2,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    sizedBox(5, 0),
                                    CustomTextFormField(
                                      cursorColor: AppColors.appColor2,
                                      controller: emailController,
                                      suffixIcon: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.remove_red_eye,
                                            size: 20,
                                            color: AppColors.appColor2,
                                          )),
                                      hintText: " Confirm password",
                                      hintStyle: const TextStyle(
                                          color: AppColors.appColor2,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              sizedBox(height * 0.05, 0),
                              Container(
                                height: 40,
                                width: width * 0.5,
                                decoration: BoxDecoration(
                                    color: AppColors.appColor2,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                    child: AppText(
                                  text: "Sign Up",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.whiteColor,
                                )),
                              ),
                              sizedBox(height * 0.05, 0),
                            ],
                          ),
                        ],
                      )),
                ),
                sizedBox(height * 0.10, width),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      text: "Already have an Account? ",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.appColor2,
                    ),
                    sizedBox(0, 3),
                    Column(
                      children: [
                        AppText(
                          text: "Sign In",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.appColor2,
                        ),
                        Container(
                          height: 1,
                          width: width * .1,
                          color: AppColors.appColor2,
                        ),
                      ],
                    )
                  ],
                ),
                sizedBox(20, 0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
