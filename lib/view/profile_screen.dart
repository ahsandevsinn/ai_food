import 'package:ai_food/utils/apptext.dart';
import 'package:ai_food/utils/custom_button.dart';
import 'package:ai_food/utils/custom_container.dart';
import 'package:ai_food/utils/custom_textfield.dart';
import 'package:ai_food/utils/sizedbox.dart';
import 'package:ai_food/utils/theme.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProfileScreen> {
  List selectedAllergies = [];
  List selectedDietaryRestrictions = [];

  List allergies = [
    "Dairy",
    "Peanut",
    "Seafood",
    "Sesame",
    "Wheat",
    "Soy",
    "Sulfite",
    "Gluten",
    "Egg",
    "Grain",
    "Tree nut",
    "Shellfish",
  ];
  List dietaryRestrictions = [
    "Gluten free",
    "ketogenic",
    "Vegetarian",
    "Lacto-Vegetarian",
    "Ovo-Vegetarian",
    "Vegan",
    "Pescetarian",
    "Paleo",
    "Primal",
    "Low FODMAP",
    "Whole30",
    "Shellfish",
  ];
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/profile.png"),
            Column(
              children: [
                sizedBox(20, 0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: "Jessica Hanson",
                      ),
                      CustomTextField(
                        hintText: "Age ",
                      ),
                    ],
                  ),
                ),
                sizedBox(10, width),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: AppText(
                          text: "Allergies:",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.appColor2,
                        ),
                      ),
                      sizedBox(10, 0),
                      Wrap(
                        runSpacing: 10,
                        spacing: 10,
                        children: allergies.map((allergy) {
                          return CustomContainer(text: allergy);
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                sizedBox(10, 0),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: AppText(
                          text: "Dietary restrictions:",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.appColor2,
                        ),
                      ),
                      sizedBox(10, 0),
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: dietaryRestrictions.map((restriction) {
                          return CustomContainer(text: restriction,);
                        }).toList(),
                      )
                    ],
                  ),
                )
              ],
            ),
            sizedBox(20, 0),
            const CustomButton(
              text: "Save",
            ),
            sizedBox(20, 0),
          ],
        ),
      ),
    ));
  }
}
