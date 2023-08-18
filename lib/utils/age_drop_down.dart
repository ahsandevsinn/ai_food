// import 'package:ai_food/utils/theme.dart';
// import 'package:flutter/material.dart';

// class AgeDropdown extends StatefulWidget {
//   @override
//   _AgeDropdownState createState() => _AgeDropdownState();
// }

// class _AgeDropdownState extends State<AgeDropdown> {
//   List<int> _ages = List.generate(100, (index) => index + 1);
//   var _selectedAge;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 160,
//       child: DropdownButtonFormField<int>(
//         value: _selectedAge,
//         decoration: InputDecoration(
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             suffixIcon: Icon(Icons.arrow_drop_down),
//             hintStyle: TextStyle(color: AppColors.labelColor),
//             hintText: "Age",
//             focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: AppColors.appColor,
//                 ),
//                 borderRadius: BorderRadius.circular(12))),
//         onChanged: (value) {
//           setState(() {
//             _selectedAge = value;
//           });
//         },
//         items: _ages.map((age) {
//           return DropdownMenuItem<int>(
//             value: age,
//             child: Text(age.toString()),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

// // class AgeDropdown extends StatefulWidget {
// //   @override
// //   _AgeDropdownState createState() => _AgeDropdownState();
// // }

// // class _AgeDropdownState extends State<AgeDropdown> {
// //   List<int> _ages = List.generate(100, (index) => index + 1);
// //   var _selectedAge;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       width: 200,
// //       child: DropdownButtonFormField<int>(
// //         value: _selectedAge,
// //         decoration: InputDecoration(
// //             border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
// //             suffixIcon: Icon(Icons.arrow_drop_down),
// //             hintText: "Age"),
// //         onChanged: (value) {
// //           setState(() {
// //             _selectedAge = value;
// //           });
// //         },
// //         items: _ages.map((age) {
// //           return DropdownMenuItem<int>(
// //             value: age,
// //             child: Text(age.toString()),
// //           );
// //         }).toList(),
// //       ),
// //     );
// //   }
// // }
