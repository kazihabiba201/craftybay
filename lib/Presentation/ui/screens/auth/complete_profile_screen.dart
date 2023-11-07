// // import 'package:ecommerce/Presentation/state_holders/create_profile_controller.dart';
// // import 'package:ecommerce/Presentation/state_holders/read_profile_controller.dart';
// // import 'package:ecommerce/Presentation/ui/screens/main_bottom_nav_screen.dart';
// // import 'package:ecommerce/Presentation/ui/utility/Images_assets.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_svg/flutter_svg.dart';
// // import 'package:get/get.dart';
// //
// // class CompleteProfileScreen extends StatefulWidget {
// //   const CompleteProfileScreen({
// //     super.key,
// //   });
// //
// //   @override
// //   State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
// // }
// //
// // class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
// //   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
// //   final TextEditingController _customerNameTEController =
// //   TextEditingController();
// //   final TextEditingController _customerAddressTEController =
// //   TextEditingController();
// //   final TextEditingController _customerCityTEController =
// //   TextEditingController();
// //   final TextEditingController _customerStateTEController =
// //   TextEditingController();
// //   final TextEditingController _customerPostcodeTEController =
// //   TextEditingController();
// //   final TextEditingController _customerCountryTEController =
// //   TextEditingController();
// //   final TextEditingController _customerPhoneTEController =
// //   TextEditingController();
// //   final TextEditingController _customerFaxTEController =
// //   TextEditingController();
// //
// //   final TextEditingController _shippingNameTEController =
// //   TextEditingController();
// //   final TextEditingController _shippingAddressTEController =
// //   TextEditingController();
// //   final TextEditingController _shippingCityTEController =
// //   TextEditingController();
// //   final TextEditingController _shippingStateTEController =
// //   TextEditingController();
// //   final TextEditingController _shippingPostcodeTEController =
// //   TextEditingController();
// //   final TextEditingController _shippingCountryTEController =
// //   TextEditingController();
// //   final TextEditingController _shippingPhoneTEController =
// //   TextEditingController();
// //
// //   ReadProfileController readProfileController =
// //   Get.put(ReadProfileController());
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //
// //     WidgetsBinding.instance.addPostFrameCallback((_) {
// //       if (readProfileController.readProfileModel.data != null) {
// //         _customerNameTEController.text =
// //             readProfileController.readProfileModel.data?.cusName ?? '';
// //         _customerAddressTEController.text =
// //             readProfileController.readProfileModel.data?.cusAdd ?? '';
// //         _customerCityTEController.text =
// //             readProfileController.readProfileModel.data?.cusCity ?? '';
// //         _customerStateTEController.text =
// //             readProfileController.readProfileModel.data?.cusState ?? '';
// //         _customerPostcodeTEController.text =
// //             readProfileController.readProfileModel.data?.cusPostcode ?? '';
// //         _customerCountryTEController.text =
// //             readProfileController.readProfileModel.data?.cusCountry ?? '';
// //         _customerPhoneTEController.text =
// //             readProfileController.readProfileModel.data?.cusPhone ?? '';
// //         _customerFaxTEController.text =
// //             readProfileController.readProfileModel.data?.cusFax ?? '';
// //
// //         _shippingNameTEController.text =
// //             readProfileController.readProfileModel.data?.shipName ?? '';
// //         _shippingAddressTEController.text =
// //             readProfileController.readProfileModel.data?.shipAdd ?? '';
// //         _shippingCityTEController.text =
// //             readProfileController.readProfileModel.data?.shipCity ?? '';
// //         _shippingStateTEController.text =
// //             readProfileController.readProfileModel.data?.shipState ?? '';
// //         _shippingPostcodeTEController.text =
// //             readProfileController.readProfileModel.data?.shipPostcode ?? '';
// //         _shippingCountryTEController.text =
// //             readProfileController.readProfileModel.data?.shipCountry ?? '';
// //         _shippingPhoneTEController.text =
// //             readProfileController.readProfileModel.data?.shipPhone ?? '';
// //
// //       }
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SafeArea(
// //         child: SingleChildScrollView(
// //           child: Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Form(
// //               key: _formKey,
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Center(child: SvgPicture.asset(ImageAssets.craftyBayLogoSVG, width: 100,)),
// //                   const SizedBox(
// //                     height: 16,
// //                   ),
// //                   Center(
// //                     child: Text(
// //                       'Complete Profile',
// //                       style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 30,),
// //                     ),
// //                   ),
// //                   const SizedBox(height: 4,),
// //                   Center(
// //                     child: Text('Get started with us by share your details',
// //                         style: Theme.of(context).textTheme.titleSmall
// //                             ?.copyWith(color: Colors.grey)),
// //                   ),
// //                   const SizedBox(
// //                     height: 40,
// //                   ),
// //                   Text(
// //                     'User Details',
// //                     style: Theme.of(context).textTheme.titleMedium?.copyWith(
// //                       fontSize: 20,
// //                     ),
// //                   ),
// //                   const SizedBox(
// //                     height: 24,
// //                   ),
// //                   TextFormField(
// //                     keyboardType: TextInputType.name,
// //                     controller: _customerNameTEController,
// //                     decoration: const InputDecoration(
// //                       hintText: 'John Doe',
// //                       labelText: 'Full Name',
// //                     ),
// //                     validator: (String? text) {
// //                       if (text?.isEmpty ?? true) {
// //                         return 'Enter your full name';
// //                       }
// //                       return null;
// //                     },
// //                   ),
// //                   const SizedBox(
// //                     height: 12,
// //                   ),
// //                   TextFormField(
// //                     maxLines: 2,
// //                     keyboardType: TextInputType.text,
// //                     controller: _customerAddressTEController,
// //                     decoration: const InputDecoration(
// //                       hintText: '237 Delia Ports',
// //                       labelText: 'Your Address',
// //                       contentPadding: EdgeInsets.symmetric(
// //                         horizontal: 16,
// //                         vertical: 16,
// //                       ),
// //                     ),
// //                     validator: (String? text) {
// //                       if (text?.isEmpty ?? true) {
// //                         return 'Enter your address';
// //                       }
// //                       return null;
// //                     },
// //                   ),
// //                   const SizedBox(
// //                     height: 12,
// //                   ),
// //                   TextFormField(
// //                     keyboardType: TextInputType.text,
// //                     controller: _customerCityTEController,
// //                     decoration: const InputDecoration(
// //                       hintText: 'Mireyamouth',
// //                       labelText: 'City',
// //                     ),
// //                     validator: (String? text) {
// //                       if (text?.isEmpty ?? true) {
// //                         return 'Enter your city name';
// //                       }
// //                       return null;
// //                     },
// //                   ),
// //                   const SizedBox(
// //                     height: 12,
// //                   ),
// //                   TextFormField(
// //                     keyboardType: TextInputType.text,
// //                     controller: _customerStateTEController,
// //                     decoration: const InputDecoration(
// //                       hintText: 'Texas',
// //                       labelText: 'State',
// //                     ),
// //                     validator: (String? text) {
// //                       if (text?.isEmpty ?? true) {
// //                         return 'Enter your state name';
// //                       }
// //                       return null;
// //                     },
// //                   ),
// //                   const SizedBox(
// //                     height: 12,
// //                   ),
// //                   TextFormField(
// //                     keyboardType: TextInputType.number,
// //                     controller: _customerPostcodeTEController,
// //                     decoration: const InputDecoration(
// //                       hintText: '55064-6682',
// //                       labelText: 'Postcode',
// //                     ),
// //                     validator: (String? text) {
// //                       if (text?.isEmpty ?? true) {
// //                         return 'Enter your postcode';
// //                       }
// //                       return null;
// //                     },
// //                   ),
// //                   const SizedBox(
// //                     height: 12,
// //                   ),
// //                   TextFormField(
// //                     keyboardType: TextInputType.text,
// //                     controller: _customerCountryTEController,
// //                     decoration: const InputDecoration(
// //                       hintText: 'USA',
// //                       labelText: 'Country',
// //                     ),
// //                     validator: (String? text) {
// //                       if (text?.isEmpty ?? true) {
// //                         return 'Enter your country name';
// //                       }
// //                       return null;
// //                     },
// //                   ),
// //                   const SizedBox(
// //                     height: 12,
// //                   ),
// //                   TextFormField(
// //                     keyboardType: TextInputType.phone,
// //                     controller:_customerPhoneTEController,
// //                     decoration: const InputDecoration(
// //                       hintText: '01**********',
// //                       labelText: 'Mobile',
// //                     ),
// //                     validator: (String? text) {
// //                       if (text?.isEmpty ?? true) {
// //                         return 'Enter your mobile number';
// //                       } else {
// //                         if (text!.length < 11) {
// //                           return 'Mobile should be at least 11 digit';
// //                         }
// //                       }
// //                       return null;
// //                     },
// //                   ),
// //                   const SizedBox(
// //                     height: 12,
// //                   ),
// //                   TextFormField(
// //                     keyboardType: TextInputType.phone,
// //                     controller: _customerFaxTEController,
// //                     decoration: const InputDecoration(
// //                       hintText: '356******',
// //                       labelText: 'Fax',
// //                     ),
// //                     validator: (String? text) {
// //                       if (text?.isEmpty ?? true) {
// //                         return 'Enter your fax number';
// //                       }
// //                       return null;
// //                     },
// //                   ),
// //                   const SizedBox(
// //                     height: 12,
// //                   ),
// //                   const SizedBox(
// //                     height: 40,
// //                   ),
// //                   Text(
// //                     'Shipping Details',
// //                     style: Theme.of(context).textTheme.titleMedium?.copyWith(
// //                       fontSize: 20,
// //                     ),
// //                   ),
// //                   const SizedBox(
// //                     height: 24,
// //                   ),
// //                   TextFormField(
// //                     keyboardType: TextInputType.name,
// //                     controller: _shippingNameTEController,
// //                     decoration: const InputDecoration(
// //                       hintText: 'John Doe',
// //                       labelText: 'Shipping Person Name',
// //                     ),
// //                     validator: (String? text) {
// //                       if (text?.isEmpty ?? true) {
// //                         return 'Enter shipping person full name';
// //                       }
// //                       return null;
// //                     },
// //                   ),
// //                   const SizedBox(
// //                     height: 12,
// //                   ),
// //                   TextFormField(
// //                     maxLines: 2,
// //                     keyboardType: TextInputType.text,
// //                     controller: _shippingAddressTEController,
// //                     decoration: const InputDecoration(
// //                       hintText: '237 Delia Ports',
// //                       labelText: 'Shipping Address',
// //                       contentPadding: EdgeInsets.symmetric(
// //                         horizontal: 16,
// //                         vertical: 16,
// //                       ),
// //                     ),
// //                     validator: (String? text) {
// //                       if (text?.isEmpty ?? true) {
// //                         return 'Enter your address';
// //                       }
// //                       return null;
// //                     },
// //                   ),
// //                   const SizedBox(
// //                     height: 12,
// //                   ),
// //                   TextFormField(
// //                     keyboardType: TextInputType.text,
// //                     controller: _shippingCityTEController,
// //                     decoration: const InputDecoration(
// //                       hintText: 'Mireyamouth',
// //                       labelText: 'Shipping City',
// //                     ),
// //                     validator: (String? text) {
// //                       if (text?.isEmpty ?? true) {
// //                         return 'Enter shipping city name';
// //                       }
// //                       return null;
// //                     },
// //                   ),
// //                   const SizedBox(
// //                     height: 12,
// //                   ),
// //                   TextFormField(
// //                     keyboardType: TextInputType.text,
// //                     controller: _shippingStateTEController,
// //                     decoration: const InputDecoration(
// //                       hintText: 'Texas',
// //                       labelText: 'Shipping State',
// //                     ),
// //                     validator: (String? text) {
// //                       if (text?.isEmpty ?? true) {
// //                         return 'Enter shipping state name';
// //                       }
// //                       return null;
// //                     },
// //                   ),
// //                   const SizedBox(
// //                     height: 12,
// //                   ),
// //                   TextFormField(
// //                     keyboardType: TextInputType.number,
// //                     controller: _shippingPostcodeTEController,
// //                     decoration: const InputDecoration(
// //                       hintText: '55064-6682',
// //                       labelText: 'Shipping Postcode',
// //                     ),
// //                     validator: (String? text) {
// //                       if (text?.isEmpty ?? true) {
// //                         return 'Enter shipping postcode';
// //                       }
// //                       return null;
// //                     },
// //                   ),
// //                   const SizedBox(
// //                     height: 12,
// //                   ),
// //                   TextFormField(
// //                     keyboardType: TextInputType.text,
// //                     controller: _shippingCountryTEController,
// //                     decoration: const InputDecoration(
// //                       hintText: 'USA',
// //                       labelText: 'Shipping Country',
// //                     ),
// //                     validator: (String? text) {
// //                       if (text?.isEmpty ?? true) {
// //                         return 'Enter shipping country name';
// //                       }
// //                       return null;
// //                     },
// //                   ),
// //                   const SizedBox(
// //                     height: 12,
// //                   ),
// //                   TextFormField(
// //                     keyboardType: TextInputType.phone,
// //                     controller: _shippingPhoneTEController,
// //                     decoration: const InputDecoration(
// //                       hintText: '01**********',
// //                       labelText: 'Shipping Mobile',
// //                     ),
// //                     validator: (String? text) {
// //                       if (text?.isEmpty ?? true) {
// //                         return 'Enter shipping mobile number';
// //                       } else {
// //                         if (text!.length < 11) {
// //                           return 'Mobile should be at least 11 digit';
// //                         }
// //                       }
// //                       return null;
// //                     },
// //                   ),
// //                   const SizedBox(
// //                     height: 16,
// //                   ),
// //                   SizedBox(
// //                     width: double.infinity,
// //                     child: GetBuilder<CreateProfileController>(
// //                         builder: (createProfileController) {
// //                           if (createProfileController.createProfileInProgress) {
// //                             return const Center(
// //                               child: CircularProgressIndicator(),
// //                             );
// //                           }
// //                           return ElevatedButton(
// //                             onPressed: () {
// //                               if (_formKey.currentState!.validate()) {
// //                                 createProfileController.createProfile(
// //                                   _customerNameTEController.text.trim(),
// //                                   _customerAddressTEController.text.trim(),
// //                                   _customerCityTEController.text.trim(),
// //                                   _customerStateTEController.text.trim(),
// //                                   _customerPostcodeTEController.text.trim(),
// //                                   _customerCountryTEController.text.trim(),
// //                                   _customerPhoneTEController.text.trim(),
// //                                   _customerFaxTEController.text.trim(),
// //                                   _shippingNameTEController.text.trim(),
// //                                   _shippingAddressTEController.text.trim(),
// //                                   _shippingCityTEController.text.trim(),
// //                                   _shippingStateTEController.text.trim(),
// //                                   _shippingPostcodeTEController.text.trim(),
// //                                   _shippingCountryTEController.text.trim(),
// //                                   _shippingPhoneTEController.text.trim(),
// //                                 ).then((result) {
// //                                   if (result==true) {
// //                                     Get.snackbar(
// //                                       'Success', 'Profile create successful.',
// //                                       backgroundColor: Colors.green,
// //                                       colorText: Colors.white,
// //                                       borderRadius: 10,
// //                                     );
// //                                     Get.to(() => const MainBottomNavScreen());
// //                                   } else {
// //                                     Get.snackbar('Failed', 'Profile create failed! Try again.',
// //                                       backgroundColor: Colors.red,
// //                                       colorText: Colors.white,
// //                                       borderRadius: 10,
// //                                     );
// //                                   }
// //                                 });
// //                               }
// //                             },
// //                             child: const Text('Complete'),
// //                           );
// //                         }),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
//
// import 'package:ecommerce/Presentation/state_holders/create_profile_controller.dart';
// import 'package:ecommerce/Presentation/state_holders/read_profile_controller.dart';
// import 'package:ecommerce/Presentation/ui/screens/main_bottom_nav_screen.dart';
// import 'package:ecommerce/Presentation/ui/utility/Images_assets.dart';
// import 'package:ecommerce/Presentation/ui/utility/app_colors.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class CompleteProfileScreen extends StatefulWidget {
//   const CompleteProfileScreen({super.key});
//
//   @override
//   State<CompleteProfileScreen> createState() =>
//       _CompleteProfileScreenState();
// }
//
// class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   final TextEditingController _customerNameTEController = TextEditingController();
//   final TextEditingController _customerAddressTEController = TextEditingController();
//   final TextEditingController _customerCityTEController = TextEditingController();
//   final TextEditingController _customerStateTEController = TextEditingController();
//   final TextEditingController _customerPostCodeTEController = TextEditingController();
//   final TextEditingController _customerCountryTEController = TextEditingController();
//   final TextEditingController _customerPhoneTEController = TextEditingController();
//   final TextEditingController _customerFaxTEController = TextEditingController();
//   final TextEditingController _shippingNameTEController = TextEditingController();
//   final TextEditingController _shippingAddressTEController = TextEditingController();
//   final TextEditingController _shippingCityTEController = TextEditingController();
//   final TextEditingController _shippingStateTEController = TextEditingController();
//   final TextEditingController _shippingPostCodeTEController = TextEditingController();
//   final TextEditingController _shippingCountryTEController = TextEditingController();
//   final TextEditingController _shippingPhoneTEController = TextEditingController();
//
//
//
//   @override
//   void initState() {
//     WidgetsBinding.instance.addPostFrameCallback((_) async {
//       if(await Get.find<ReadProfileController>().readProfileData() == true){
//         await Get.find<ReadProfileController>().readProfileData();
//         final ReadProfileController readProfileDataController = Get.put(ReadProfileController());
//         _customerNameTEController.text = readProfileDataController.readProfileModel.data?.cusName ?? '';
//         _customerAddressTEController.text = readProfileDataController.readProfileModel.data?.cusAdd ?? '';
//         _customerCityTEController.text = readProfileDataController.readProfileModel.data?.cusCity ?? '';
//         _customerStateTEController.text = readProfileDataController.readProfileModel.data?.cusState ?? '';
//         _customerPostCodeTEController.text = readProfileDataController.readProfileModel.data?.cusPostcode ?? '';
//         _customerCountryTEController.text = readProfileDataController.readProfileModel.data?.cusCountry ?? '';
//         _customerPhoneTEController.text = readProfileDataController.readProfileModel.data?.cusPhone ?? '';
//         _customerFaxTEController.text = readProfileDataController.readProfileModel.data?.cusFax ?? '';
//         _shippingNameTEController.text = readProfileDataController.readProfileModel.data?.shipName ?? '';
//         _shippingAddressTEController.text = readProfileDataController.readProfileModel.data?.shipAdd ?? '';
//         _shippingCityTEController.text = readProfileDataController.readProfileModel.data?.shipCity ?? '';
//         _shippingStateTEController.text = readProfileDataController.readProfileModel.data?.shipState ?? '';
//         _shippingPostCodeTEController.text = readProfileDataController.readProfileModel.data?.shipPostcode ?? '';
//         _shippingCountryTEController.text = readProfileDataController.readProfileModel.data?.shipCountry ?? '';
//         _shippingPhoneTEController.text = readProfileDataController.readProfileModel.data?.shipPhone ?? '';
//       }
//
//     });
//
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _customerNameTEController.dispose();
//     _customerAddressTEController.dispose();
//     _customerCityTEController.dispose();
//     _customerStateTEController.dispose();
//     _customerPostCodeTEController.dispose();
//     _customerCountryTEController.dispose();
//     _customerPhoneTEController.dispose();
//     _customerFaxTEController.dispose();
//     _shippingNameTEController.dispose();
//     _shippingAddressTEController.dispose();
//     _shippingCityTEController.dispose();
//     _shippingStateTEController.dispose();
//     _shippingPostCodeTEController.dispose();
//     _shippingCountryTEController.dispose();
//     _shippingPhoneTEController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 children: [
//                   const SizedBox(height: 20),
//                   const Center(
//                     child: Text(ImageAssets.craftyBayLogoSVG),
//                   ),
//                   const SizedBox(height: 20),
//                   Text(
//                     'Complete Profile',
//                     style: Theme.of(context)
//                         .textTheme
//                         .titleLarge
//                         ?.copyWith(fontSize: 26),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     'Get Started with Your Details',
//                     style: Theme.of(context)
//                         .textTheme
//                         .bodyLarge
//                         ?.copyWith(color: Colors.grey),
//                   ),
//                   const SizedBox(height: 16),
//                   TextFormField(
//                     cursorColor: AppColors.primaryColor,
//                     controller: _customerNameTEController,
//                     decoration: const InputDecoration(
//                       hintText: 'Customer Name',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                     validator: (String? value){
//                       if(value?.isEmpty ?? true){
//                         return "Enter Your Name";
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height:16),
//                   TextFormField(
//                     cursorColor: AppColors.primaryColor,
//                     controller: _customerAddressTEController,
//                     decoration: const InputDecoration(
//                       hintText: 'Customer Address',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                     validator: (String? value){
//                       if(value?.isEmpty ?? true){
//                         return "Enter Your Address";
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height:16),
//                   TextFormField(
//                     cursorColor: AppColors.primaryColor,
//                     controller: _customerCityTEController,
//                     decoration: const InputDecoration(
//                       hintText: 'Customer City',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                     validator: (String? value){
//                       if(value?.isEmpty ?? true){
//                         return "Enter Your City";
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height:16),
//                   TextFormField(
//                     cursorColor: AppColors.primaryColor,
//                     controller: _customerStateTEController,
//                     decoration: const InputDecoration(
//                       hintText: 'Customer State',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                     validator: (String? value){
//                       if(value?.isEmpty ?? true){
//                         return "Enter Your State";
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height:16),
//                   TextFormField(
//                     cursorColor: AppColors.primaryColor,
//                     controller: _customerPostCodeTEController,
//                     decoration: const InputDecoration(
//                       hintText: 'Customer Postcode',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                     validator: (String? value){
//                       if(value?.isEmpty ?? true){
//                         return "Enter Your Postcode";
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height:16),
//                   TextFormField(
//                     cursorColor: AppColors.primaryColor,
//                     controller: _customerCountryTEController,
//                     decoration: const InputDecoration(
//                       hintText: 'Customer Country',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                     validator: (String? value){
//                       if(value?.isEmpty ?? true){
//                         return "Enter Your Country";
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height:16),
//                   TextFormField(
//                     cursorColor: AppColors.primaryColor,
//                     controller: _customerPhoneTEController,
//                     decoration: const InputDecoration(
//                       hintText: 'Customer Phone',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                     validator: (String? value){
//                       if(value?.isEmpty ?? true){
//                         return "Enter Your Phone";
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height:16),
//                   TextFormField(
//                     cursorColor: AppColors.primaryColor,
//                     controller: _customerFaxTEController,
//                     decoration: const InputDecoration(
//                       hintText: 'Customer Fax',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                     validator: (String? value){
//                       if(value?.isEmpty ?? true){
//                         return "Enter Your Fax";
//                       }
//                       return null;
//                     },
//                   ),
//                   //Shipping Details
//                   const SizedBox(height: 16),
//                   TextFormField(
//                     cursorColor: AppColors.primaryColor,
//                     controller: _shippingNameTEController,
//                     decoration: const InputDecoration(
//                       hintText: 'Shipping Name',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                     validator: (String? value){
//                       if(value?.isEmpty ?? true){
//                         return "Enter Shipping Name";
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height:16),
//                   TextFormField(
//                     cursorColor: AppColors.primaryColor,
//                     controller: _shippingAddressTEController,
//                     decoration: const InputDecoration(
//                       hintText: 'Shipping Address',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                     validator: (String? value){
//                       if(value?.isEmpty ?? true){
//                         return "Enter Shipping Address";
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height:16),
//                   TextFormField(
//                     cursorColor: AppColors.primaryColor,
//                     controller: _shippingCityTEController,
//                     decoration: const InputDecoration(
//                       hintText: 'Shipping City',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                     validator: (String? value){
//                       if(value?.isEmpty ?? true){
//                         return "Enter Shipping City";
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height:16),
//                   TextFormField(
//                     cursorColor: AppColors.primaryColor,
//                     controller: _shippingStateTEController,
//                     decoration: const InputDecoration(
//                       hintText: 'Shipping State',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                     validator: (String? value){
//                       if(value?.isEmpty ?? true){
//                         return "Enter Shipping State";
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height:16),
//                   TextFormField(
//                     cursorColor: AppColors.primaryColor,
//                     controller: _shippingPostCodeTEController,
//                     decoration: const InputDecoration(
//                       hintText: 'Shipping Postcode',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                     validator: (String? value){
//                       if(value?.isEmpty ?? true){
//                         return "Enter Shipping Postcode";
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height:16),
//                   TextFormField(
//                     cursorColor: AppColors.primaryColor,
//                     controller: _shippingCountryTEController,
//                     decoration: const InputDecoration(
//                       hintText: 'Shipping Country',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                     validator: (String? value){
//                       if(value?.isEmpty ?? true){
//                         return "Enter Shipping Country";
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height:16),
//                   TextFormField(
//                     cursorColor: AppColors.primaryColor,
//                     controller: _shippingPhoneTEController,
//                     decoration: const InputDecoration(
//                       hintText: 'Shipping Phone',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                     validator: (String? value){
//                       if(value?.isEmpty ?? true){
//                         return "Enter Shipping Phone";
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height: 16),
//                   SizedBox(
//                     width: double.infinity,
//                     child: GetBuilder<CreateProfileController>(
//                         builder: (completeProfileController) {
//                           if(completeProfileController.createProfileInProgress){
//                             return const Center(
//                               child: CircularProgressIndicator(),
//                             );
//                           }
//                           return ElevatedButton(
//                             onPressed: () async {
//                               if(!_formKey.currentState!.validate()){
//                                 return;
//                               }
//                               final result =
//                               await completeProfileController.createProfile(
//                                 _customerNameTEController.text.trim(),
//                                 _customerAddressTEController.text.trim(),
//                                 _customerCityTEController.text.trim(),
//                                 _customerStateTEController.text.trim(),
//                                 _customerPostCodeTEController.text.trim(),
//                                 _customerCountryTEController.text.trim(),
//                                 _customerPhoneTEController.text.trim(),
//                                 _customerFaxTEController.text.trim(),
//                                 _shippingNameTEController.text.trim(),
//                                 _shippingAddressTEController.text.trim(),
//                                 _shippingCityTEController.text.trim(),
//                                 _shippingStateTEController.text.trim(),
//                                 _shippingPostCodeTEController.text.trim(),
//                                 _shippingCountryTEController.text.trim(),
//                                 _shippingPhoneTEController.text.trim(),
//                               );
//                               if(result){
//                                 Get.snackbar(
//                                   'Profile Updated',
//                                   'Your Profile Updated Successfully!',
//                                   colorText: Colors.white,
//                                   snackPosition: SnackPosition.BOTTOM,
//                                   backgroundColor: AppColors.primaryColor.withOpacity(0.5),
//                                 );
//                                 Get.to( ()=> const MainBottomNavScreen());
//                               }
//
//                             },
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: AppColors.primaryColor, // Background color
//                             ),
//                             child: const Text('Submit'),
//                           );
//                         }
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:ecommerce/Presentation/state_holders/create_profile_controller.dart';
import 'package:ecommerce/Presentation/ui/screens/main_bottom_nav_screen.dart';
import 'package:ecommerce/Presentation/ui/utility/Images_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CreateProfileScreen extends StatelessWidget {
  CreateProfileScreen({super.key});

  final TextEditingController _cusNameTEController = TextEditingController();
  final TextEditingController _cusAddTEController = TextEditingController();
  final TextEditingController _cusCityTEController = TextEditingController();
  final TextEditingController _cusStateTEController = TextEditingController();
  final TextEditingController _cusPostcodeTEController =
  TextEditingController();
  final TextEditingController _cusCountryTEController = TextEditingController();
  final TextEditingController _cusMobileTEController = TextEditingController();
  final TextEditingController _cusFaxTEController = TextEditingController();
  final TextEditingController _shipNameTEController = TextEditingController();
  final TextEditingController _shipAddTEController = TextEditingController();
  final TextEditingController _shipCityTEController = TextEditingController();
  final TextEditingController _shipStateTEController = TextEditingController();
  final TextEditingController _shipPostcodeTEController =
  TextEditingController();
  final TextEditingController _shipCountryTEController =
  TextEditingController();
  final TextEditingController _shipMobileTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                 Center(
                    child: SvgPicture.asset(ImageAssets.craftyBayLogoSVG, width: 100,),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Complete Profile',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text('Get started with us by share your details',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.grey)),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'User Details',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: _cusNameTEController,
                    decoration: const InputDecoration(
                      hintText: 'John Doe',
                      labelText: 'Full Name',
                    ),
                    validator: (String? text) {
                      if (text?.isEmpty ?? true) {
                        return 'Enter your full name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    maxLines: 5,
                    keyboardType: TextInputType.text,
                    controller: _cusAddTEController,
                    decoration: const InputDecoration(
                      hintText: '237 Delia Ports',
                      labelText: 'Your Address',
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                    ),
                    validator: (String? text) {
                      if (text?.isEmpty ?? true) {
                        return 'Enter your address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _cusCityTEController,
                    decoration: const InputDecoration(
                      hintText: 'Mireyamouth',
                      labelText: 'City',
                    ),
                    validator: (String? text) {
                      if (text?.isEmpty ?? true) {
                        return 'Enter your city name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _cusStateTEController,
                    decoration: const InputDecoration(
                      hintText: 'Texas',
                      labelText: 'State',
                    ),
                    validator: (String? text) {
                      if (text?.isEmpty ?? true) {
                        return 'Enter your state name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _cusPostcodeTEController,
                    decoration: const InputDecoration(
                      hintText: '55064-6682',
                      labelText: 'Postcode',
                    ),
                    validator: (String? text) {
                      if (text?.isEmpty ?? true) {
                        return 'Enter your postcode';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _cusCountryTEController,
                    decoration: const InputDecoration(
                      hintText: 'USA',
                      labelText: 'Country',
                    ),
                    validator: (String? text) {
                      if (text?.isEmpty ?? true) {
                        return 'Enter your country name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: _cusMobileTEController,
                    decoration: const InputDecoration(
                      hintText: '01**********',
                      labelText: 'Mobile',
                    ),
                    validator: (String? text) {
                      if (text?.isEmpty ?? true) {
                        return 'Enter your mobile number';
                      } else {
                        if (text!.length < 11) {
                          return 'Mobile should be at least 11 digit';
                        }
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: _cusFaxTEController,
                    decoration: const InputDecoration(
                      hintText: '356******',
                      labelText: 'Fax',
                    ),
                    validator: (String? text) {
                      if (text?.isEmpty ?? true) {
                        return 'Enter your fax number';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Shipping Details',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: _shipNameTEController,
                    decoration: const InputDecoration(
                      hintText: 'John Doe',
                      labelText: 'Shipping Person Name',
                    ),
                    validator: (String? text) {
                      if (text?.isEmpty ?? true) {
                        return 'Enter shipping person full name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    maxLines: 5,
                    keyboardType: TextInputType.text,
                    controller: _shipAddTEController,
                    decoration: const InputDecoration(
                      hintText: '237 Delia Ports',
                      labelText: 'Shipping Address',
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                    ),
                    validator: (String? text) {
                      if (text?.isEmpty ?? true) {
                        return 'Enter your address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _shipCityTEController,
                    decoration: const InputDecoration(
                      hintText: 'Mireyamouth',
                      labelText: 'Shipping City',
                    ),
                    validator: (String? text) {
                      if (text?.isEmpty ?? true) {
                        return 'Enter shipping city name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _shipStateTEController,
                    decoration: const InputDecoration(
                      hintText: 'Texas',
                      labelText: 'Shipping State',
                    ),
                    validator: (String? text) {
                      if (text?.isEmpty ?? true) {
                        return 'Enter shipping state name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _shipPostcodeTEController,
                    decoration: const InputDecoration(
                      hintText: '55064-6682',
                      labelText: 'Shipping Postcode',
                    ),
                    validator: (String? text) {
                      if (text?.isEmpty ?? true) {
                        return 'Enter shipping postcode';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _shipCountryTEController,
                    decoration: const InputDecoration(
                      hintText: 'USA',
                      labelText: 'Shipping Country',
                    ),
                    validator: (String? text) {
                      if (text?.isEmpty ?? true) {
                        return 'Enter shipping country name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: _shipMobileTEController,
                    decoration: const InputDecoration(
                      hintText: '01**********',
                      labelText: 'Shipping Mobile',
                    ),
                    validator: (String? text) {
                      if (text?.isEmpty ?? true) {
                        return 'Enter shipping mobile number';
                      } else {
                        if (text!.length < 11) {
                          return 'Mobile should be at least 11 digit';
                        }
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: GetBuilder<CreateProfileController>(
                        builder: (createProfileScreenController) {
                          if (createProfileScreenController
                              .createProfileInProgress) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                createProfileScreenController
                                    .createProfile(
                                  _cusNameTEController.text.trim(),
                                  _cusAddTEController.text.trim(),
                                  _cusCityTEController.text.trim(),
                                  _cusStateTEController.text.trim(),
                                  _cusPostcodeTEController.text.trim(),
                                  _cusCountryTEController.text.trim(),
                                  _cusMobileTEController.text.trim(),
                                  _cusFaxTEController.text.trim(),
                                  _shipNameTEController.text.trim(),
                                  _shipAddTEController.text.trim(),
                                  _shipCityTEController.text.trim(),
                                  _shipStateTEController.text.trim(),
                                  _shipPostcodeTEController.text.trim(),
                                  _shipCountryTEController.text.trim(),
                                  _shipMobileTEController.text.trim(),
                                )
                                    .then((result) {
                                  if (result) {
                                    Get.snackbar(
                                        'Success', 'Profile create successful.',
                                        backgroundColor: Colors.green,
                                        colorText: Colors.white,
                                        borderRadius: 10,
                                        snackPosition: SnackPosition.BOTTOM);
                                    Get.offAll(() => const MainBottomNavScreen());
                                  } else {
                                    Get.snackbar('Failed',
                                        'Profile create failed! Try again.',
                                        backgroundColor: Colors.red,
                                        colorText: Colors.white,
                                        borderRadius: 10,
                                        snackPosition: SnackPosition.BOTTOM);
                                  }
                                });
                              }
                            },
                            child: const Text('Complete'),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}