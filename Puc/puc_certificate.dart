// import 'package:driveCo/src/Document%20wallet/Puc/puc_view.dart';
// import 'package:driveCo/src/Document%20wallet/insurance_policyview.dart';
import 'package:driveCo/src/Document_wallet/Puc/puc_view.dart';
import 'package:driveCo/src/app_configs/app_colors.dart';
import 'package:driveCo/src/app_configs/app_images.dart';
import 'package:flutter/material.dart';

class PucCertificate extends StatelessWidget {
  const PucCertificate({super.key});

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
          'Take a photo of your PUC\n certificate',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [

          Positioned(
            top: 206,
            left: 14,
            child: Opacity(
              opacity: 0.3,
              child: Container(
                width: 330,
                height: 288,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.unions),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: 152,
            left: screenWidth / 2 - 90,
            child: Image.asset(
              AppImages.ellipse,
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: 340,
            left: 0,
            right: 0,
            child: Text(
              'Choose a document to upload\nupload format .jpeg, .jpg, .png, .pdf\nmax size: 2MB',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.darkgreyBackgroundColor,
              ),
            ),
          ),

          Positioned(
            top: 620,
            left: (screenWidth - 177) / 2,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PucView(),
                  ),
                );
              },
              child: Container(
                width: 177,
                height: 42,
                padding: const EdgeInsets.fromLTRB(12, 9, 12, 9), // Padding
                decoration: BoxDecoration(
                  color: AppColors.highlightBorderColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppImages.camera,
                      width: 20,
                      height: 20,
                      color: AppColors.greyBackgroundColor,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Open Camera',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 16.94 / 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: 670,
            left: (screenWidth - 177) / 2,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PucView(),
                  ),
                );
              },
              child: Container(
                width: 177,
                height: 42,
                padding: const EdgeInsets.fromLTRB(12, 9, 12, 9), // Padding
                decoration: BoxDecoration(
                  color: AppColors.linkColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppImages.imageAdd,
                      width: 20,
                      height: 20,
                      color: AppColors.greyBackgroundColor,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Open Gallery',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 16.94 / 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
