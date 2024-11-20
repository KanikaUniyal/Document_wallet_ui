import 'package:flutter/material.dart';
import 'package:driveCo/src/app_configs/app_colors.dart';
import 'package:driveCo/src/app_configs/app_images.dart';
import 'package:driveCo/src/common_widgets/buttons/primary_button.dart';

class Policy extends StatelessWidget {
  const Policy({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset(
            AppImages.arrowBack,
            color: AppColors.outlineBorderColor,
            width: 32,
            height: 32,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Insurance policy',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 200,
            left: (screenWidth - 151) / 2,
            child: Image.asset(
              AppImages.policy,
              width: 151,
              height: 204,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 40,
            left: screenWidth * 0.25,
            child: Container(
              width: screenWidth * 0.5,
              child: PrimaryButton(
                text: 'SUBMIT',
                onPressed: () {
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
