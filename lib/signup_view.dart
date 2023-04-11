// import 'dart:io';
//
// // import 'package:filmi_jobs/controller/login_controller.dart';
// // import 'package:filmi_jobs/core/constants/app_localizations.dart';
// // import 'package:filmi_jobs/core/constants/color_constants.dart';
// // import 'package:filmi_jobs/core/constants/image_constants.dart';
// // import 'package:filmi_jobs/core/utils/validations.dart';
// // import 'package:filmi_jobs/data/model/get_city.dart';
// // import 'package:filmi_jobs/data/model/get_country.dart';
// // import 'package:filmi_jobs/data/model/get_state.dart';
// // import 'package:filmi_jobs/presentation/widgets/custom_button.dart';
// // import 'package:filmi_jobs/presentation/widgets/custom_text_field.dart';
// import 'package:filmijobs/color_constants.dart';
// import 'package:filmijobs/custom_text_field.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_vector_icons/flutter_vector_icons.dart';
// // import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:image_picker/image_picker.dart';
// // import 'package:intl/intl.dart';
// // import 'package:provider/provider.dart';
// //
// // import '../../../../core/constants/style_constants.dart';
//
// class SignupView extends StatefulWidget {
//   const SignupView({Key? key}) : super(key: key);
//
//   @override
//   State<SignupView> createState() => _SignupViewState();
// }
//
// class _SignupViewState extends State<SignupView> {
//   bool _agreeToTermsAndConditions = false;
//   @override
//   // void initState() {
//   //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
//   //     LoginController controller =
//   //         Provider.of<LoginController>(context, listen: false);
//   //     await controller.getCountries(context: context);
//   //   });
//   //   super.initState();
//   // }
//
//   final formKey = GlobalKey<FormState>();
//   TextEditingController guardianNameController = TextEditingController();
//   TextEditingController firstNameController = TextEditingController();
//   TextEditingController lastNameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController mobileController = TextEditingController();
//   TextEditingController pinCodeController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController confirmPasswordController = TextEditingController();
//   TextEditingController referralController = TextEditingController();
//   TextEditingController dateController = TextEditingController();
//   PickedFile? _pickedFile;
//
//   // Function to open the gallery and select an image
//   Future<void> _openGallery() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.getImage(source: ImageSource.gallery);
//
//     // Update the state with the picked file
//     setState(() {
//       _pickedFile = pickedFile!;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//
//       return Scaffold(
//         body: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 10),
//           decoration: const BoxDecoration(
//               // image: DecorationImage(
//               //   image: AssetImage(
//               //     ImageConstants.background,
//               //   ),
//               // ),
//               ),
//           height: size.height,
//           width: size.width,
//           child: Form(
//             key: formKey,
//             child: NotificationListener<OverscrollIndicatorNotification>(
//               onNotification: ((notification) {
//                 notification.disallowIndicator();
//                 return true;
//               }),
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(
//                       height: 80,
//                     ),
//                     SizedBox(
//                         height: 110, child: Image.asset('ImageConstants.logo')),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Sign up to \nyour account",
//                             style: GoogleFonts.montserrat(
//                               color: ColorConstants.textColor,
//                               fontSize: 22,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () => {_openGallery()},
//                             child: Container(
//                               margin: const EdgeInsets.only(top: 40.0),
//                               child: Center(
//                                   child: SizedBox(
//                                 height: 140,
//                                 child: _pickedFile != null
//                                     ? ClipOval(
//                                         child: Image.file(
//                                           File(_pickedFile!.path),
//                                           height: 140,
//                                           width: 140,
//                                         ),
//                                       )
//                                     : ClipOval(
//                                         child: Image.asset(
//                                           height: 140,
//                                           width: 140,
//                                           'ImageConstants.profileImage',
//                                           fit: BoxFit.none,
//                                         ),
//                                       ),
//                               )),
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 50,
//                           ),
//                           SizedBox(
//                             width: size.width - 40,
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   CustomTextField(
//                                     title: "Guardian name",
//                                     keyboardType: TextInputType.name,
//                                     isRequired: true,
//                                     padding: 25,
//                                     // validator: Validations.nameValidation,
//                                     controller: guardianNameController,
//                                   ),
//                                   CustomTextField(
//                                     title: "First name",
//                                     keyboardType: TextInputType.name,
//                                     isRequired: true,
//                                     padding: 25,
//                                     // validator: Validations.nameValidation,
//                                     controller: firstNameController,
//                                   ),
//                                   CustomTextField(
//                                     title: "Last name",
//                                     keyboardType: TextInputType.name,
//                                     isRequired: true,
//                                     padding: 25,
//                                     // validator: Validations.nameValidation,
//                                     controller: lastNameController,
//                                   ),
//                                   CustomTextField(
//                                     title: "Email address",
//                                     keyboardType: TextInputType.emailAddress,
//                                     isRequired: true,
//                                     padding: 25,
//                                     // validator: Validations.emailValidation,
//                                     controller: emailController,
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 6),
//                                     child: Column(
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Text(
//                                               "Gender",
//                                               style: GoogleFonts.montserrat(
//                                                 color:
//                                                     ColorConstants.textColor2,
//                                                 fontWeight: FontWeight.w600,
//                                               ),
//                                             ),
//                                             const Icon(
//                                               MaterialIcons.star_rate,
//                                               color: Colors.red,
//                                               size: 10,
//                                             )
//                                           ],
//                                         ),
//                                         const SizedBox(
//                                           height: 10,
//                                         ),
//                                         DropdownButton<String>(
//                                           // value: controller.selectedGender,
//                                           itemHeight: 50,
//                                           isExpanded: true,
//                                           hint: const Padding(
//                                             padding:
//                                                 EdgeInsets.only(bottom: 15.0),
//                                             child: Text("Select Gender"),
//                                           ),
//                                           icon:
//                                               const Icon(Icons.arrow_drop_down),
//                                           iconSize: 24,
//                                           elevation: 16,
//                                           style: const TextStyle(
//                                               color: Colors.black),
//                                           underline: const Divider(
//                                             color: ColorConstants.pink2,
//                                             thickness: 2,
//                                           ),
//                                           onChanged: (newValue) {
//                                             // controller.selectGender(newValue!);
//                                           },
//                                           items: (controller.gender)
//                                               .map<DropdownMenuItem<String>>(
//                                                   (value) {
//                                             return DropdownMenuItem<String>(
//                                               value: value,
//                                               child: SizedBox(
//                                                   height: 80,
//                                                   child: Text(
//                                                     value,
//                                                   )),
//                                             );
//                                           }).toList(),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   CustomTextField(
//                                     title: "Date Of Birth",
//                                     controller: dateController,
//                                     // keyboardType: TextInputType,
//                                     isRequired: true,
//                                     hintText: "Select Birth Date",
//                                     padding: 25,
//                                     // suffix: InkWell(
//                                     //     onTap: () {
//                                     //       controller.selectDate(
//                                     //           context: context);
//                                     //       dateController.text =
//                                     //           DateFormat("dd/MM/yyyy").format(
//                                     //               controller.selectedDate);
//                                     //     },
//                                     //     child: const Icon(Ionicons.calendar)),
//                                   ),
//                                   CustomTextField(
//                                     title: "Mobile number",
//                                     maxLength: 10,
//                                     isRequired: true,
//                                     inputFormatters: [
//                                       LengthLimitingTextInputFormatter(10),
//                                       FilteringTextInputFormatter.digitsOnly
//                                     ],
//                                     keyboardType: TextInputType.phone,
//                                     padding: 25,
//                                     // validator: Validations.phoneValidation,
//                                     controller: mobileController,
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 6),
//                                     child: Column(
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Text(
//                                               "Country",
//                                               style: GoogleFonts.montserrat(
//                                                 color:
//                                                     ColorConstants.textColor2,
//                                                 fontWeight: FontWeight.w600,
//                                               ),
//                                             ),
//                                             const Icon(
//                                               MaterialIcons.star_rate,
//                                               color: Colors.red,
//                                               size: 10,
//                                             )
//                                           ],
//                                         ),
//                                         const SizedBox(
//                                           height: 10,
//                                         ),
//                                         DropdownButton<CountryArray>(
//                                           value: controller.selectedCountry,
//                                           itemHeight: 50,
//                                           isExpanded: true,
//                                           hint: const Padding(
//                                             padding:
//                                                 EdgeInsets.only(bottom: 15.0),
//                                             child: Text("Select Country"),
//                                           ),
//                                           icon:
//                                               const Icon(Icons.arrow_drop_down),
//                                           iconSize: 24,
//                                           elevation: 16,
//                                           style: const TextStyle(
//                                               color: Colors.black),
//                                           underline: const Divider(
//                                             color: ColorConstants.pink2,
//                                             thickness: 2,
//                                           ),
//                                           onChanged: (newValue) async {
//                                             await controller.selectCountry(
//                                                 newValue!, context);
//                                           },
//                                           items: (controller
//                                                       .getCountry.stateArray ??
//                                                   [])
//                                               .map<
//                                                   DropdownMenuItem<
//                                                       CountryArray>>((value) {
//                                             return DropdownMenuItem<
//                                                 CountryArray>(
//                                               value: value,
//                                               child: SizedBox(
//                                                   height: 80,
//                                                   child: Text(
//                                                     value.countryName ?? "",
//                                                     // style: StyleConstants
//                                                     //     .dropdownStyle,
//                                                   )),
//                                             );
//                                           }).toList(),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 6),
//                                     child: Column(
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Text(
//                                               "State",
//                                               style: GoogleFonts.montserrat(
//                                                 color:
//                                                     ColorConstants.textColor2,
//                                                 fontWeight: FontWeight.w600,
//                                               ),
//                                             ),
//                                             const Icon(
//                                               MaterialIcons.star_rate,
//                                               color: Colors.red,
//                                               size: 10,
//                                             )
//                                           ],
//                                         ),
//                                         const SizedBox(
//                                           height: 10,
//                                         ),
//                                         DropdownButton<StateArray>(
//                                           value: controller.selectedState,
//                                           itemHeight: 50,
//                                           isExpanded: true,
//                                           hint: const Padding(
//                                             padding:
//                                                 EdgeInsets.only(bottom: 15.0),
//                                             child: Text("Select State"),
//                                           ),
//                                           icon:
//                                               const Icon(Icons.arrow_drop_down),
//                                           iconSize: 24,
//                                           elevation: 16,
//                                           style: const TextStyle(
//                                               color: Colors.black),
//                                           underline: const Divider(
//                                             color: ColorConstants.pink2,
//                                             thickness: 2,
//                                           ),
//                                           onChanged: (newValue) async {
//                                             await controller.selectState(
//                                                 newValue!, context);
//                                           },
//                                           items:
//                                               (controller.getState.stateArray ??
//                                                       [])
//                                                   .map<
//                                                       DropdownMenuItem<
//                                                           StateArray>>((value) {
//                                             return DropdownMenuItem<StateArray>(
//                                               value: value,
//                                               child: SizedBox(
//                                                   height: 80,
//                                                   child: Text(
//                                                     value.stateName ?? "",
//                                                     // style: StyleConstants
//                                                     //     .dropdownStyle,
//                                                   )),
//                                             );
//                                           }).toList(),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 6),
//                                     child: Column(
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Text(
//                                               "City",
//                                               style: GoogleFonts.montserrat(
//                                                 color:
//                                                     ColorConstants.textColor2,
//                                                 fontWeight: FontWeight.w600,
//                                               ),
//                                             ),
//                                             const Icon(
//                                               MaterialIcons.star_rate,
//                                               color: Colors.red,
//                                               size: 10,
//                                             )
//                                           ],
//                                         ),
//                                         const SizedBox(
//                                           height: 10,
//                                         ),
//                                         DropdownButton<CityArray>(
//                                           value: controller.selectedCity,
//                                           itemHeight: 50,
//                                           isExpanded: true,
//                                           hint: const Padding(
//                                             padding:
//                                                 EdgeInsets.only(bottom: 15.0),
//                                             child: Text("Select City"),
//                                           ),
//                                           icon:
//                                               const Icon(Icons.arrow_drop_down),
//                                           iconSize: 24,
//                                           elevation: 16,
//                                           style: const TextStyle(
//                                               color: Colors.black),
//                                           underline: const Divider(
//                                             color: ColorConstants.pink2,
//                                             thickness: 2,
//                                           ),
//                                           onChanged: (newValue) {
//                                             controller.selectCity(newValue!);
//                                           },
//                                           items: (controller
//                                                       .getCity.cityArray ??
//                                                   [])
//                                               .map<DropdownMenuItem<CityArray>>(
//                                                   (value) {
//                                             return DropdownMenuItem<CityArray>(
//                                               value: value,
//                                               child: SizedBox(
//                                                   height: 80,
//                                                   child: Text(
//                                                     value.cityName ?? "",
//                                                     // style: StyleConstants
//                                                     //     .dropdownStyle,
//                                                   )),
//                                             );
//                                           }).toList(),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   CustomTextField(
//                                     title: "Pin Code",
//                                     keyboardType: TextInputType.number,
//                                     isRequired: true,
//                                     padding: 25,
//                                     // validator: Validations.nameValidation,
//                                     controller: pinCodeController,
//                                   ),
//                                   CustomTextField(
//                                     title: "Password",
//                                     keyboardType: TextInputType.visiblePassword,
//                                     isRequired: true,
//                                     padding: 8,
//                                     // validator: Validations.nameValidation,
//                                     controller: passwordController,
//                                   ),
//                                   Container(
//                                     margin: EdgeInsets.only(bottom: 20.0),
//                                     child: Text(
//                                       "Password must have at least 8 characters that contain Uppercase and lowercase letters, Numbers and Special Characters (e.g *, %, \$ )",
//                                       style: GoogleFonts.montserrat(
//                                         color: ColorConstants.textColor,
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                     ),
//                                   ),
//                                   CustomTextField(
//                                     title: "Confirm Password",
//                                     keyboardType: TextInputType.visiblePassword,
//                                     isRequired: true,
//                                     padding: 25,
//                                     // validator: Validations.nameValidation,
//                                     controller: confirmPasswordController,
//                                   ),
//                                   CustomTextField(
//                                     title: "Referral Code",
//                                     keyboardType: TextInputType.name,
//                                     isRequired: false,
//                                     padding: 25,
//                                     controller: referralController,
//                                   ),
//                                   Row(
//                                     children: [
//                                       Checkbox(
//                                         value: _agreeToTermsAndConditions,
//                                         onChanged: (value) => {},
//                                       ),
//                                       Text(
//                                         'I agree to your ',
//                                         style: TextStyle(
//                                           fontSize: 14.0,
//                                           color: Colors.black,
//                                         ),
//                                       ),
//                                       InkWell(
//                                         onTap: () => {},
//                                         child: Text(
//                                           'Terms & Conditions',
//                                           style: TextStyle(
//                                               fontSize: 14.0,
//                                               color: Colors.indigoAccent,
//                                               fontWeight: FontWeight.w700),
//                                         ),
//                                       )
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           // CustomButton(
//                           //   showGradient: false,
//                           //   testingPurpose: () {},
//                           //   onTap: () {
//                           //     if (formKey.currentState!.validate()) {
//                           //       //we'll implement login here
//                           //     }
//                           //   },
//                           //   width: size.width,
//                           //   height: 50,
//                           //   margin: const EdgeInsets.all(10),
//                           //   radius: 10,
//                           //   style: GoogleFonts.montserrat(
//                           //     color: Colors.white,
//                           //     fontSize: 19,
//                           //     fontWeight: FontWeight.w500,
//                           //   ),
//                           //   text: AppLocalizations.next.tr.toUpperCase(),
//                           // ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       );
//   }
// }
