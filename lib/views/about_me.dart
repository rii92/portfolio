import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/globals/app_assets.dart';
import 'package:portofolio/globals/app_colors.dart';
import 'package:portofolio/globals/constants.dart';
import 'package:portofolio/helper%20class/helper_class.dart';
import '../globals/app_text_styles.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildAboutMeContents(),
          Constants.sizedBox(height: 35.0),
          buildProfilePicture(),
        ],
      ),
      tablet: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildProfilePicture(),
          Constants.sizedBox(width: 25.0),
          Expanded(child: buildAboutMeContents())
        ],
      ),
      desktop: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildProfilePicture(),
          Constants.sizedBox(width: 25.0),
          Expanded(child: buildAboutMeContents())
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }

  FadeInRight buildProfilePicture() {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: Image.asset(
        AppAssets.profile2,
        height: 450,
        width: 400,
      ),
    );
  }

  Column buildAboutMeContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInRight(
          duration: const Duration(milliseconds: 1200),
          child: RichText(
            text: TextSpan(
              text: 'About ',
              style: AppTextStyles.headingStyles(fontSize: 30.0),
              children: [
                TextSpan(
                  text: 'Me!',
                  style: AppTextStyles.headingStyles(
                      fontSize: 30, color: AppColors.robinEdgeBlue),
                )
              ],
            ),
          ),
        ),
        Constants.sizedBox(height: 6.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'Hands-on experience!',
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
        ),
        Constants.sizedBox(height: 8.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Text(
            '''Welcome to my compelling portfolio! Throughout my journey as a developer, I've had the privilege of crafting captivating websites for various companies, each one a testament to my dedication and expertise. Among my proudest achievements is my groundbreaking Android application, CAPI, developed during my thesis, which revolutionized the way questionnaires are generated with intricate validations. The pursuit of excellence is my constant companion, as I continue to immerse myself in the world of development, honing my skills, and expanding my knowledge. The insatiable desire to evolve into a consummate professional drives me forward on this exhilarating path. Join me as I embark on new challenges, bringing innovation, precision, and creativity to every project I undertake. Together, let's create a brighter digital future!''',
            style: AppTextStyles.normalStyle(),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        // FadeInUp(
        //   duration: const Duration(milliseconds: 1800),
        //   child: AppButtons.buildMaterialButton(
        //       onTap: () {}, buttonName: 'Read More'),
        // )
      ],
    );
  }
}
