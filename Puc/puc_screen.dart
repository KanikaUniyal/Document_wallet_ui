import 'package:driveCo/src/Document_wallet/Puc/puc_certificate.dart';
import 'package:driveCo/src/Document_wallet/Puc/puc_submitted.dart';
import 'package:driveCo/src/app_configs/app_colors.dart';
import 'package:driveCo/src/app_configs/app_images.dart';
import 'package:driveCo/src/common_widgets/buttons/primary_button.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PUCScreen(),
    );
  }
}
class PUCScreen extends StatelessWidget {
  const PUCScreen({super.key});

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
          'Add PUC details',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 64),


                const Text(
                  'PUC certificate no.',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),

                _buildInfoBoxWithoutArrow(screenWidth, 'certificate Number'),

                const SizedBox(height: 16),

                const Text(
                  'Valid Upto',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                    letterSpacing: 0.18,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                _buildValidUptoBox(screenWidth),

                const SizedBox(height: 64),

                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PucCertificate(), // Change this as per your file
                      ),
                    );
                  },
                  child: const Center(
                    child: Text(
                      'Upload document (optional)',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        height: 16.94 / 14,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),

            Positioned(
              top: 650,
              left: screenWidth * 0.25,
              child: Container(
                width: screenWidth * 0.4,
                height: 49,
                child: PrimaryButton(
                  text: 'SUBMIT',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PucSubmitted(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoBoxWithoutArrow(double screenWidth, String hintText) {
    return Container(
      width: screenWidth * 0.9,
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.outlineBorderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              hintText,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: screenWidth * 0.035,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildValidUptoBox(double screenWidth) {
    return Container(
      width: screenWidth * 0.4,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.outlineBorderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Row(
          children: [
            Text(
              '10/05/2024', // Adjust the date accordingly
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: screenWidth * 0.035,
                fontWeight: FontWeight.w400,
                height: 1.2,
                color: AppColors.outlineBorderColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
