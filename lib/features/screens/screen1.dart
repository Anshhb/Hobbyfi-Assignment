import 'package:flutter/material.dart';
import 'package:hobbyfi_assignment/core/constants/app_colors.dart';
import 'package:hobbyfi_assignment/core/constants/app_constants.dart';
import 'package:hobbyfi_assignment/core/constants/app_icon_assets.dart';
import 'package:hobbyfi_assignment/core/constants/size_config.dart';
import 'package:hobbyfi_assignment/features/screens/screen2.dart';
import 'package:hobbyfi_assignment/l10n/app_localizations.dart';
import 'package:hobbyfi_assignment/widgets/common_app_bar.dart';
import 'package:hobbyfi_assignment/widgets/common_card_widget.dart';
import 'package:hobbyfi_assignment/widgets/custom_btn.dart';
import 'package:hobbyfi_assignment/widgets/custom_text_cm.dart';
import 'package:hobbyfi_assignment/widgets/local_assets.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CommonAppBar(
        title: "Request to Join",
        isLeading: true,
        showRightButton: true,
        rightButtonColor: AppColors.black,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: SizeConfig.size150,
                  child: LocalAssets(
                    imagePath: AppIconAssets.back1,
                    width: double.infinity,
                    boxFix: BoxFit.cover,
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.paddingXL,
                      left: SizeConfig.paddingXL,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(
                              "Vendor : Eclipse Arena",
                              color: AppColors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: SizeConfig.extraLarge,
                            ),
                            SizedBox(width: SizeConfig.size90),
                            CustomBtn(
                              onTap: () {},
                              title: "Cricket 🏏",
                              radius: SizeConfig.size24,
                              height: SizeConfig.size26,
                              width: SizeConfig.size77,
                              fontSize: SizeConfig.extraSmall,
                              fontWeight: FontWeight.w500,
                              textColor: AppColors.yellow00,
                              bgColor: AppColors.yellowbc,
                            ),
                          ],
                        ),

                        SizedBox(height: SizeConfig.size30),
                        Row(
                          children: [
                            LocalAssets(
                              imagePath: AppIconAssets.loadIcon,
                              width: SizeConfig.size28,
                              height: SizeConfig.size28,
                            ),

                            SizedBox(width: SizeConfig.size10),
                            CustomText(
                              "2/3 Joined",
                              color: AppColors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: SizeConfig.medium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: SizeConfig.size10),
            CommonCardWidget(
              borderRadius: SizeConfig.size13,
              borderWidth: 0.5,

              height: SizeConfig.size190,
              width: SizeConfig.size400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.paddingXS,
                      left: SizeConfig.paddingXS,
                    ),
                    child: CustomText(
                      "Game Details",
                      fontSize: SizeConfig.large,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Divider(
                    thickness: 0.5,
                    color: AppColors.black,
                    height: SizeConfig.size20,
                    indent: SizeConfig.paddingXS,
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.paddingXS,
                          vertical: SizeConfig.paddingS,
                        ),
                        child: Row(
                          children: [
                            LocalAssets(imagePath: AppIconAssets.googleMaps),
                            SizedBox(width: SizeConfig.size15),
                            CustomText(
                              "Mansarovar, Jaipur",
                              fontSize: SizeConfig.medium,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(width: SizeConfig.size40),
                            LocalAssets(imagePath: AppIconAssets.calender),
                            SizedBox(width: SizeConfig.size15),
                            CustomText(
                              "23rd Jan, Thur",
                              fontSize: SizeConfig.medium,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.paddingXS,
                          vertical: SizeConfig.paddingXS,
                        ),
                        child: Row(
                          children: [
                            LocalAssets(imagePath: AppIconAssets.clock),
                            SizedBox(width: SizeConfig.size15),
                            CustomText(
                              "06:00 PM  - 09:00",
                              fontSize: SizeConfig.medium,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(width: SizeConfig.size20),
                            // LocalAssets(imagePath: AppIconAssets.calender),
                            Container(
                              height: SizeConfig.size30,
                              width: SizeConfig.size60,
                              decoration: BoxDecoration(
                                color: AppColors.green3D,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(
                                  SizeConfig.size7,
                                ),
                                border: Border.all(
                                  width: 1.15,
                                  color: AppColors.green75,
                                ),
                              ),
                              child: Center(
                                child: CustomText(
                                  "₹419",
                                  color: AppColors.green75,
                                ),
                              ),
                            ),
                            SizedBox(width: SizeConfig.size15),
                            CustomText(
                              "Per Player",
                              fontSize: SizeConfig.medium,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: SizeConfig.size10),
            CommonCardWidget(
              borderRadius: SizeConfig.size13,
              borderWidth: 0.5,

              height: SizeConfig.size420,
              width: SizeConfig.size400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.paddingXS,
                      left: SizeConfig.paddingXS,
                    ),
                    child: CustomText(
                      "Player Information",
                      fontSize: SizeConfig.large,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Divider(
                    thickness: 0.5,
                    color: AppColors.black,
                    height: SizeConfig.size20,
                    indent: SizeConfig.paddingXS,
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.paddingXS,
                          vertical: SizeConfig.paddingS,
                        ),
                        child: Column(
                          children: [
                            infoChips(true),
                            SizedBox(height: SizeConfig.size15),
                            infoChips(false),
                            SizedBox(height: SizeConfig.size15),
                            infoChips(false),
                            SizedBox(height: SizeConfig.size15),
                            infoChips(false),
                            SizedBox(height: SizeConfig.size15),
                            infoChips(false),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: SizeConfig.size50),
            CustomText(
              "Pay the Game Host directly at the venue",
              color: AppColors.black,
              fontSize: SizeConfig.small,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: SizeConfig.size8),
            CustomBtn(
              onTap: () {
                navigatePushTo(context, Screen2());
              },
              title: AppLocalizations.of(context)!.confirmRequest,
              bgColor: AppColors.green75,
              height: SizeConfig.size50,
              width: SizeConfig.size380,
              radius: SizeConfig.size7,
            ),

            SizedBox(height: SizeConfig.size8),
            CustomText(
              "1 Slot Available",
              color: AppColors.black,
              fontSize: SizeConfig.extraSmall,
              fontWeight: FontWeight.w500,
            ),

            SizedBox(height: SizeConfig.size30),
          ],
        ),
      ),
    );
  }
 /// PLAYER INFORMATION CHIPS WIDGET 
  Widget infoChips(bool isfirst) {
    return Container(
      height: SizeConfig.size50,
      width: SizeConfig.size350,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(SizeConfig.size8),
        border: Border.all(width: 0.5, color: AppColors.black),
      ),
      padding: EdgeInsets.all(SizeConfig.paddingXS),
      child: Row(
        children: [
          LocalAssets(imagePath: AppIconAssets.playerProfile),
          SizedBox(width: SizeConfig.paddingS),
          CustomText(
            isfirst ? "Varsha - Game Host" : "Varsha",
            color: AppColors.black,
            fontWeight: FontWeight.w500,
            fontSize: SizeConfig.large,
          ),

          isfirst
              ? SizedBox(width: SizeConfig.size100)
              : SizedBox(width: SizeConfig.size200),
          LocalAssets(imagePath: AppIconAssets.message),
        ],
      ),
    );
  }
}
