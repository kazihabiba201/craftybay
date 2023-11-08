import 'package:ecommerce/Presentation/state_holders/email_verification_controller.dart';
import 'package:ecommerce/Presentation/state_holders/otp_verification_controller.dart';
import 'package:ecommerce/Presentation/state_holders/read_profile_controller.dart';
import 'package:ecommerce/Presentation/ui/screens/auth/complete_profile_screen.dart';
import 'package:ecommerce/Presentation/ui/screens/main_bottom_nav_screen.dart';
import 'package:ecommerce/Presentation/ui/utility/Images_assets.dart';
import 'package:ecommerce/Presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPVerificationScreen extends StatefulWidget {
  final String email;

  const OTPVerificationScreen({Key? key, required this.email})
      : super(key: key);

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _otpTEController = TextEditingController();
  final EmailVerificationController _emailVerificationController =
      Get.find<EmailVerificationController>();
  final OtpVerificationController _otpVerificationController =
      Get.find<OtpVerificationController>();

  @override
  void initState() {
    super.initState();
    _otpVerificationController.seconds = 120;
    _otpVerificationController.startTimer();
  }

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: SvgPicture.asset(
                    ImageAssets.craftyBayLogoSVG,
                    width: 100,
                  )),
                  const SizedBox(height: 10),
                  Center(
                    child: Text(
                      'Enter OTP Code',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Center(
                    child: Text(
                      'A 6 digit OTP code has been sent',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 24),
                  PinCodeTextField(
                    controller: _otpTEController,
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    keyboardType: TextInputType.number,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 50,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      selectedFillColor: Colors.white,
                      activeColor: AppColors.primaryColor,
                      inactiveColor: AppColors.primaryColor,
                      selectedColor: Colors.green,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    onCompleted: (v) {},
                    onChanged: (value) {},
                    beforeTextPaste: (text) {
                      return true;
                    },
                    appContext: context,
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: GetBuilder<OtpVerificationController>(
                        builder: (controller) {
                      if (controller.otpVerificationInProgress) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryColor),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            verifyOtp(controller);
                          }
                        },
                        child: const Text('Next'),
                      );
                    }),
                  ),
                  const SizedBox(height: 24),
                  GetBuilder<OtpVerificationController>(
                      builder: (otpVerificationController) {
                    return Column(
                      children: [
                        RichText(
                          text: TextSpan(
                              style: const TextStyle(color: Colors.grey),
                              children: [
                                const TextSpan(
                                    text: 'This code will expire in'),
                                TextSpan(
                                  text: ' ${otpVerificationController.seconds}',
                                  style: TextStyle(
                                    color:
                                        otpVerificationController.seconds == 0
                                            ? Colors.grey
                                            : AppColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ]),
                        ),
                        TextButton(
                          onPressed: () {
                            if (_otpVerificationController.seconds == 0) {
                              _emailVerificationController
                                  .verifyEmail(widget.email);
                              _otpVerificationController.seconds = 120;
                              _otpVerificationController.startTimer();
                            }
                          },
                          style: TextButton.styleFrom(
                            foregroundColor:
                                _otpVerificationController.seconds == 0
                                    ? AppColors.primaryColor
                                    : Colors.grey,
                          ),
                          child: const Text('Resend'),
                        ),
                      ],
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> verifyOtp(OtpVerificationController controller) async {
    final response =
        await controller.verifyOtp(widget.email, _otpTEController.text.trim());
    if (response) {
      Get.snackbar('Success', 'OTP verification successful.',
          borderRadius: 10, snackPosition: SnackPosition.BOTTOM);
      await Get.find<ReadProfileController>().readProfileData();

      Get.find<ReadProfileController>().readProfileModel.data == null
          ? Get.offAll(() => CreateProfileScreen())
          : Get.offAll(() => const MainBottomNavScreen());
    } else {
      Get.snackbar('Failed', 'Otp verification failed! Try again',
          backgroundColor: Colors.red,
          colorText: Colors.white,
          borderRadius: 10,
          snackPosition: SnackPosition.BOTTOM);
      _otpTEController.clear();
      controller.timer.cancel();
    }
  }
}
