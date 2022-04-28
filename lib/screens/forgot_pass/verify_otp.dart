import 'package:fitness_app/screens/forgot_pass/confirm_password.dart';
import 'package:fitness_app/select_position.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTPVerify extends StatefulWidget {
  const OTPVerify({Key? key}) : super(key: key);

  @override
  State<OTPVerify> createState() => _OTPVerifyState();
}

class _OTPVerifyState extends State<OTPVerify> {
  bool agreed = true;
  TextEditingController otp_1 = TextEditingController();
  TextEditingController otp_2 = TextEditingController();
  TextEditingController otp_3 = TextEditingController();
  TextEditingController otp_4 = TextEditingController();

  Widget _textFieldOTP(
      {required bool first, last, required TextEditingController controller_}) {
    return Container(
      height: 85,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          controller: controller_,
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Color(0xff9E9E9E)),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: AppColors.white),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: height,
                width: width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/login.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: height * 0.2,
                left: width / 10,
                child: Container(
                  height: height * 0.5,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    color: AppColors.grey2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: height * 0.04),
                      Padding(
                        padding: EdgeInsets.only(left: width / 10),
                        child: Row(
                          children: [
                            Text(
                              'Code',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.01),

                      Padding(
                        padding: EdgeInsets.only(left: width / 10),
                        child: Row(
                          children: [
                            Container(
                              height: 4,
                              width: 40,
                              decoration: BoxDecoration(
                                color: AppColors.material,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: height * 0.04),

                      //!OTP

                      Container(
                        padding: EdgeInsets.only(left: 28, top: 28, right: 28),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: _textFieldOTP(
                                      first: true,
                                      last: false,
                                      controller_: otp_1),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: _textFieldOTP(
                                      first: false,
                                      last: false,
                                      controller_: otp_2),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: _textFieldOTP(
                                      first: false,
                                      last: false,
                                      controller_: otp_3),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: _textFieldOTP(
                                      first: false,
                                      last: true,
                                      controller_: otp_4),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Expired',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                ' 00:06',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Resend Code',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      //!Sign up
                      SizedBox(height: height * 0.08),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            ConfirmPassword(),
                            transition: Transition.zoom,
                            duration: const Duration(milliseconds: 250),
                          );
                        },
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              'VERIFY',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Positioned(
              //   top: height * 0.9,
              //   left: width * 0.3,
              //   child: GestureDetector(
              //     onTap: () {
              //       Get.back();
              //     },
              //     child: const Text(
              //       'Already have an account?',
              //       style: TextStyle(
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
