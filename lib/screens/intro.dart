import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'AuthScreens/login_screen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Get.offAll(() => const LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: AppColors.splashBg,
      pages: [
        PageViewModel(
          title: '',
          bodyWidget: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/intro1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // decoration: pageDecoration,  //!Removed this
        ),
        PageViewModel(
          title: '',
          bodyWidget: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/intro2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // decoration: pageDecoration,  //!Removed this
        ),
        PageViewModel(
          title: '',
          bodyWidget: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/intro3.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // decoration: pageDecoration,  //!Removed this
        ),
      ],
      onDone: () => _onIntroEnd(context),
      showSkipButton: false,
      showBackButton: false,
      back: Container(),
      skip: Container(),
      next: Container(),
      done: Container(),
      curve: Curves.fastLinearToSlowEaseIn,

      //!Skip  button
      globalFooter: SizedBox(
        height: 60,
        width: width * 0.4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.magenta,
                ),
              ),
              onPressed: () => _onIntroEnd(context),
            ),
            const Icon(
              Icons.arrow_right_alt,
              color: AppColors.magenta,
            )
          ],
        ),
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeColor: AppColors.magenta, //!Dot color
        activeSize: Size(10.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}
