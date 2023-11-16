import 'package:aviz_project/views/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // The title of this page and the use of a horizontal line to put the logo and text together
          Padding(
            padding: const EdgeInsets.only(top: 76, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset('assets/images/aviz_logo_info.svg'),
                const Text(
                  'ورود به',
                  style: TextStyle(
                    color: CustomColors.grey700,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),

          // Jump the distance according to the plan
          const SizedBox(height: 16),

          // text description and the use of a horizontal line
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '!خوشحالیم که مجددا آویز رو برای آگهی انتخاب کردی',
                  style: TextStyle(
                    color: CustomColors.grey500,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),

          // Jump the distance according to the plan
          const SizedBox(height: 32),

          // Phone number input box for login and authentication
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              autofocus: true,
              keyboardType: TextInputType.phone,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                filled: true,
                fillColor: CustomColors.grey100,
                hintText: 'شماره موبایل',
                hintStyle: TextStyle(
                  color: CustomColors.grey500,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          //I have used Spacer to create distance
          const Spacer(),

          // The button to go to the next step and complete the authentication
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: CustomColors.primeryBase,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/arrow-left.svg'),
                  const SizedBox(height: 12),
                  const Text(
                    'مرحله بعد',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Using TextRich for a text with two colors and different appearance
          const Text.rich(
            TextSpan(
              text: 'تاحالا ثبت نام نکردی؟',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: CustomColors.grey500),
              children: [
                TextSpan(
                  text: ' ثبت نام',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.primeryBase,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
