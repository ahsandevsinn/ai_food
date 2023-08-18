import 'package:ai_food/utils/apptext.dart';
import 'package:ai_food/utils/custom_textfield.dart';
import 'package:ai_food/utils/sizedbox.dart';
import 'package:ai_food/utils/theme.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                          text: "Sign In",
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: AppColors.appColor2,
                        ),
                        AppText(
                          text: "Sign In to Continue",
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
                                        Column(
                                          children: [
                                            AppText(
                                              text: "Sign in",
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.appColor2,
                                            ),
                                            sizedBox(3, 0),
                                            Container(
                                              height: 3,
                                              width: width * .2,
                                              color: AppColors.appColor2,
                                            ),
                                          ],
                                        ),
                                        AppText(
                                          text: "Sign up",
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.lightBlack
                                              .withOpacity(0.25),
                                        ),
                                      ],
                                    ),
                                    sizedBox(height * 0.1, 0),
                                    CustomTextFormField(
                                      cursorColor: AppColors.appColor2,
                                      controller: emailController,
                                      hintText: "Email or Mobile number",
                                      hintStyle: const TextStyle(
                                          color: AppColors.appColor2,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    sizedBox(10, 0),
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
                                      hintText: "Password",
                                      hintStyle: const TextStyle(
                                          color: AppColors.appColor2,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    sizedBox(5, 0),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: AppText(
                                        text: "Forgot password?",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.appColor2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              sizedBox(height * 0.17, 0),
                              Container(
                                height: 40,
                                width: width * 0.5,
                                decoration: BoxDecoration(
                                    color: AppColors.appColor2,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                    child: AppText(
                                  text: "Sign In",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.whiteColor,
                                )),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
                sizedBox(10, 0),
                Container(
                  height: 48,
                  width: width * .9,
                  decoration: BoxDecoration(
                    // color: AppColors.appColor2,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: AppColors.appColor2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/apple.png",
                        height: 20,
                      ),
                      sizedBox(0, 8),
                      AppText(
                        text: "Continue with Apple",
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: AppColors.appColor2,
                      )
                    ],
                  ),
                ),
                sizedBox(10, 0),
                Container(
                  height: 48,
                  width: width * .9,
                  decoration: BoxDecoration(
                    // color: AppColors.appColor2,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: AppColors.appColor2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/google.png",
                        height: 20,
                      ),
                      sizedBox(0, 8),
                      AppText(
                        text: "Continue with Google",
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: AppColors.appColor2,
                      )
                    ],
                  ),
                ),
                sizedBox(20, 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      text: "Don’t have an Account?",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.appColor2,
                    ),
                    sizedBox(0, 3),
                    Column(
                      children: [
                        AppText(
                          text: "Sign Up",
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
