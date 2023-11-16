import 'package:aviz_project/views/constants/colors.dart';
import 'package:flutter/material.dart';

// A horizontal row for the buttons to go to the authentication pages
class AuthenticationButtonWidget extends StatelessWidget {
  const AuthenticationButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: CustomColors.primeryBase, width: 1.0),
              color: Colors.white,
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 65.5, vertical: 8),
              child: Center(
                child: Text(
                  'ورود',
                  style: TextStyle(
                      color: CustomColors.primeryBase,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),

          const SizedBox(width: 25),

          // Register button
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: CustomColors.primeryBase,
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 53.5, vertical: 8),
              child: Center(
                child: Text(
                  'ثبت نام',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
