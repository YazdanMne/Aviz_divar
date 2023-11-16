import 'package:aviz_project/views/constants/colors.dart';
import 'package:aviz_project/views/widgets/authentication_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class UnboardingScreen extends StatelessWidget {
  const UnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 1);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //
                // There are two pictures that must be placed on top of each other by Stack
                Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/info_image.png',
                        height: 224,
                        width: 224,
                      ),
                    ),
                    SvgPicture.asset('assets/images/bg_image_source.svg'),
                  ],
                ),

                // Jump the distance according to the plan
                const SizedBox(height: 32),

                // A horizontal line to place three items together
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'آگهی شماست',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: CustomColors.grey700),
                    ),
                    const SizedBox(width: 8),
                    SvgPicture.asset('assets/images/aviz_logo_info.svg'),
                    const SizedBox(width: 8),
                    const Text(
                      'اینجا محل',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: CustomColors.grey700),
                    ),
                  ],
                ),

                // Jump the distance according to the plan
                const SizedBox(height: 16),

                // Here I made a box for the introduction text using SizedBox
                const SizedBox(
                  width: 300,
                  child: Center(
                    child: Text(
                      'در آویز ملک خود را برای فروش،اجاره و رهن آگهی کنید و یا اگر دنبال ملک با مشخصات دلخواه خود هستید آویز ها را ببینید',
                      style: TextStyle(
                        color: CustomColors.grey500,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                // Jump the distance according to the plan
                const SizedBox(height: 130),

                // A page indicator is placed here to show the current page
                SmoothPageIndicator(
                  controller: controller, // PageController
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: CustomColors.primeryBase,
                    dotColor: CustomColors.grey300,
                    dotHeight: 6,
                    dotWidth: 6,
                    spacing: 4,
                  ),
                ),
              ],
            ),

            // Authentication Button Widget
            const Positioned(
              bottom: 22,
              left: 10,
              right: 10,
              child: Center(child: AuthenticationButtonWidget()),
            ),
          ],
        ),
      ),
    );
  }
}
