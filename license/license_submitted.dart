import 'package:flutter/material.dart';
import 'package:driveCo/src/app_configs/app_images.dart';
import 'package:driveCo/src/common_widgets/buttons/primary_button.dart';

class LicenseSubmitted extends StatelessWidget {
  const LicenseSubmitted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                Image.asset(
                  AppImages.verify,
                  width: 101.35,
                  height: 94.85,
                  opacity: const AlwaysStoppedAnimation(1.0),
                ),
                const SizedBox(height: 30),

                Container(
                  width: 310,
                  alignment: Alignment.center,
                  child: const Text(
                    'Document has\nbeen uploaded successfully',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      height: 24.2 / 20,
                      color: Color(0xFF384444),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 719,
            left: 130,
            child: Container(
              width: 150,
              height: 49,
              child: PrimaryButton(
                text: 'OK',
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
