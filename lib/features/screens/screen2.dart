import 'package:flutter/material.dart';
import 'package:hobbyfi_assignment/core/constants/app_colors.dart';
import 'package:hobbyfi_assignment/core/constants/app_icon_assets.dart';
import 'package:hobbyfi_assignment/core/constants/size_config.dart';
import 'package:hobbyfi_assignment/widgets/common_app_bar.dart';
import 'package:hobbyfi_assignment/widgets/common_card_widget.dart';
import 'package:hobbyfi_assignment/widgets/custom_btn.dart';
import 'package:hobbyfi_assignment/widgets/custom_text_cm.dart';
import 'package:hobbyfi_assignment/widgets/local_assets.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  /// IMAGE SWIPE UI WIDGET
  Widget buildDot({required bool isActive}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: SizeConfig.size4),
      width: SizeConfig.size5,
      height: SizeConfig.size5,
      decoration: BoxDecoration(
        color: isActive ? AppColors.green75 : AppColors.greyD9,
        borderRadius: BorderRadius.circular(SizeConfig.size4),
      ),
    );
  }

  /// DOTS TEXT WIDGET
  Widget bulletLine(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          "•  ",
          fontSize: SizeConfig.medium,
          color: AppColors.myColor,
          fontWeight: FontWeight.w400,
        ),
        Expanded(
          child: CustomText(
            text,
            fontSize: SizeConfig.medium,
            color: AppColors.myColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  /// AMENITIES WIDGET
  Widget _amenityRow(String icon, String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.size10),
      child: Row(
        children: [
          LocalAssets(imagePath: icon),
          SizedBox(width: SizeConfig.size10),
          CustomText(
            text,
            fontSize: SizeConfig.small,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CommonAppBar(
        isLeading: true,
        showRightButton: true,
        rightButtonColor: AppColors.white,
        appBarColor: AppColors.transparent,
        leadingIconColor: AppColors.white,
      ),
      body: Stack(
        children: [
          // Fullscreen Stack
          Positioned.fill(
            child: Column(
              children: [
                /// Upper Image
                SizedBox(
                  width: double.infinity,
                  height: SizeConfig.size400,
                  child: LocalAssets(
                    imagePath: AppIconAssets.back2,
                    boxFix: BoxFit.cover,
                  ),
                ),
                Expanded(child: Container(color: Colors.transparent)),
              ],
            ),
          ),
          Positioned(
            top: SizeConfig.size310 - SizeConfig.size30,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildDot(isActive: false),
                buildDot(isActive: true),
                buildDot(isActive: false),
                buildDot(isActive: false),
              ],
            ),
          ),

          Positioned(
            top: SizeConfig.size310,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(SizeConfig.size34),
                  topRight: Radius.circular(SizeConfig.size34),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(SizeConfig.size34),
                  topRight: Radius.circular(SizeConfig.size34),
                ),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(SizeConfig.paddingM),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomText(
                            "V2k Football",
                            fontSize: SizeConfig.title,
                            fontWeight: FontWeight.w700,
                          ),
                          Spacer(),
                          Container(
                            height: SizeConfig.size20,
                            width: SizeConfig.size40,
                            decoration: BoxDecoration(
                              color: AppColors.black49,
                              borderRadius: BorderRadius.circular(
                                SizeConfig.size4,
                              ),
                            ),
                            child: Center(
                              child: CustomText(
                                "4.9 ⭐",
                                fontSize: SizeConfig.extraSmall,
                                fontWeight: FontWeight.w600,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: SizeConfig.size10),
                      Row(
                        children: [
                          LocalAssets(imagePath: AppIconAssets.clock2),
                          SizedBox(width: SizeConfig.size10),
                          CustomText(
                            "Mon - Fri , Open till 23:59pm",
                            fontSize: SizeConfig.small,
                            fontWeight: FontWeight.w400,
                          ),
                          Spacer(),
                          LocalAssets(imagePath: AppIconAssets.upArrow),
                          SizedBox(width: SizeConfig.size5),
                          CustomText(
                            "Booked 7 times",
                            fontSize: SizeConfig.small,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      Divider(),
                      CommonCardWidget(
                        borderWidth: 0.5,
                        padding: 0,
                        borderRadius: SizeConfig.size13,
                        height: SizeConfig.size160,
                        width: SizeConfig.size390,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(SizeConfig.paddingS),
                              width: double.infinity,
                              height: SizeConfig.size55,
                              decoration: BoxDecoration(
                                color: AppColors.green3D,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(SizeConfig.size13),
                                  topRight: Radius.circular(SizeConfig.size13),
                                ),
                                border: Border.all(
                                  width: SizeConfig.size1,
                                  color: AppColors.green75,
                                ),
                              ),
                              child: CustomText(
                                "Select a Sport",
                                fontSize: SizeConfig.large,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: SizeConfig.size20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CommonCardWidget(
                                  shadowColor: AppColors.shadowColor,
                                  borderColor: AppColors.borderColor,
                                  borderWidth: SizeConfig.size1,
                                  height: SizeConfig.size60,
                                  width: SizeConfig.size170,
                                  borderRadius: SizeConfig.size12,
                                  child: Center(
                                    child: Row(
                                      children: [
                                        CustomText(
                                          " Football Turf",
                                          fontSize: SizeConfig.large,
                                          fontWeight: FontWeight.w600,
                                        ),

                                        SizedBox(width: SizeConfig.size5),
                                        LocalAssets(
                                          imagePath: AppIconAssets.footBall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                SizedBox(width: SizeConfig.size10),
                                CommonCardWidget(
                                  shadowColor: AppColors.shadowColor,
                                  borderWidth: SizeConfig.size1,
                                  borderColor: AppColors.green75,
                                  color: AppColors.green3DLightSolid,
                                  height: SizeConfig.size60,
                                  width: SizeConfig.size170,
                                  borderRadius: SizeConfig.size12,
                                  child: Center(
                                    child: Row(
                                      children: [
                                        CustomText(
                                          " Box Cricket",
                                          fontSize: SizeConfig.large,
                                          fontWeight: FontWeight.w600,
                                        ),

                                        SizedBox(width: SizeConfig.size5),
                                        LocalAssets(
                                          imagePath: AppIconAssets.cricketBat,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.size10),
                      CommonCardWidget(
                        borderWidth: 0.5,
                        padding: 0,
                        height: SizeConfig.size320,
                        width: SizeConfig.size390,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: SizeConfig.paddingM,
                                left: SizeConfig.paddingM,
                                right: SizeConfig.paddingM,
                                bottom: SizeConfig.paddingXS,
                              ),

                              child: CustomText(
                                "About",
                                fontSize: SizeConfig.large,
                                color: AppColors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Divider(indent: 5, endIndent: 5, height: 10),
                            Padding(
                              padding: EdgeInsets.all(SizeConfig.paddingM),

                              child: CustomText(
                                "Our gym offers state-of-the-art fitness facilities with personalized training programs designed to help you achieve your health goals. Whether you're looking for strength training, cardio, o",
                                fontSize: SizeConfig.medium,
                                color: AppColors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.paddingL,
                              ),
                              child: Divider(),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.paddingXS,
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: SizeConfig.size55,
                                      left: SizeConfig.size8,
                                    ),
                                    child: LocalAssets(
                                      imagePath: AppIconAssets.profilePic,
                                    ),
                                  ),
                                  SizedBox(width: SizeConfig.size20),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomText(
                                                  "Varsha Sharma",
                                                  fontSize: SizeConfig.large,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                CustomText(
                                                  "Manager",
                                                  color: AppColors.grey82,
                                                  fontSize: SizeConfig.small,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ],
                                            ),

                                            SizedBox(width: SizeConfig.size130),
                                            LocalAssets(
                                              imagePath: AppIconAssets.message,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: SizeConfig.paddingXS,
                                          ),
                                          child: Divider(),
                                        ),
                                        CustomText(
                                          "A-8 Sundar Singh Bhandari Nagar Swej Farm , Jaipur 302019",
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.size10),
                      CommonCardWidget(
                        padding: 0,
                        height: SizeConfig.size250,
                        width: SizeConfig.size390,
                        borderWidth: 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(SizeConfig.paddingM),
                              child: CustomText(
                                "Amenities",
                                fontSize: SizeConfig.large,
                                color: AppColors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: EdgeInsets.only(left: SizeConfig.size20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _amenityRow(
                                          AppIconAssets.ground,
                                          "Artificial Turf",
                                        ),
                                        _amenityRow(
                                          AppIconAssets.glass,
                                          "Drinking Water",
                                        ),
                                        _amenityRow(
                                          AppIconAssets.locker,
                                          "Locker Room",
                                        ),
                                        _amenityRow(
                                          AppIconAssets.sofa,
                                          "Seating Area",
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: SizeConfig.size40),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: SizeConfig.size2),
                                        _amenityRow(
                                          AppIconAssets.basketBall,
                                          "Ball Boy",
                                        ),
                                        SizedBox(height: SizeConfig.size8),
                                        _amenityRow(
                                          AppIconAssets.light,
                                          "Flood Lights",
                                        ),
                                        SizedBox(height: SizeConfig.size10),
                                        _amenityRow(
                                          AppIconAssets.parking,
                                          "Parking",
                                        ),
                                        SizedBox(height: SizeConfig.size8),
                                        _amenityRow(
                                          AppIconAssets.shower,
                                          "Showers",
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: SizeConfig.size10),
                      CommonCardWidget(
                        padding: 0,
                        height: SizeConfig.size460,
                        width: SizeConfig.size390,
                        borderWidth: 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(SizeConfig.paddingM),
                              child: CustomText(
                                "Venue Rules",
                                fontSize: SizeConfig.large,
                                color: AppColors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: SizeConfig.paddingM,
                                horizontal: SizeConfig.paddingM,
                              ),
                              child: CustomText(
                                "Cancellation, Terms & Conditions",
                                fontSize: SizeConfig.large,
                                color: AppColors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.paddingM,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  bulletLine(
                                    "Lorem ipsum dolor sit amet consectetur. Commodo ante leo nisl diam amet eleifend tortor.",
                                  ),
                                  SizedBox(height: SizeConfig.size6),
                                  bulletLine(
                                    "Purus mattis at risus pellentesque nibh nunc faucibus. Semper quam tellus tellus dignissim",
                                  ),
                                  SizedBox(height: SizeConfig.size6),
                                  bulletLine(
                                    "Luctus cursus fermentum nullam. Quis urna nunc felis bibendum suspendisse at aliquam sit aliquam.",
                                  ),

                                  SizedBox(height: SizeConfig.size6),
                                  CommonCardWidget(
                                    padding: 0,
                                    color: AppColors.green3DLightSolid,
                                    borderWidth: SizeConfig.size1,
                                    borderColor: AppColors.green75,
                                    borderRadius: SizeConfig.size10,
                                    height: SizeConfig.size150,
                                    width: SizeConfig.size370,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: SizeConfig.paddingS,
                                        left: SizeConfig.paddingS,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            "Terms & Conditions",
                                            color: AppColors.green51,
                                            fontSize: SizeConfig.small,
                                            fontWeight: FontWeight.w500,
                                          ),

                                          SizedBox(height: SizeConfig.size10),
                                          bulletLine("No Smoking"),
                                          bulletLine("No Drinking"),
                                          bulletLine(
                                            "Studs/Metal Studs/ not allowed",
                                          ),
                                          bulletLine(
                                            "For Cricket only 25 players are allowed",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.size10),
                      CommonCardWidget(
                        padding: 0,
                        height: SizeConfig.size200,
                        width: SizeConfig.size390,
                        borderWidth: 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(SizeConfig.paddingM),
                              child: CustomText(
                                "Customer Review",
                                fontSize: SizeConfig.large,
                                color: AppColors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Divider(),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.paddingXXL,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CustomText(
                                        "4.5",
                                        fontSize: SizeConfig.size46,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.green75,
                                      ),
                                      CustomText(
                                        "Overall Rating",
                                        fontSize: SizeConfig.small,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.black,
                                      ),
                                      SizedBox(height: SizeConfig.size10),
                                      LocalAssets(
                                        imagePath: AppIconAssets.fiveStar,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: SizeConfig.size30),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right: SizeConfig.size20,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            CustomText(
                                              "Excellent",
                                              fontSize: SizeConfig.extraSmall,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.myColor,
                                            ),
                                            Spacer(),
                                            LocalAssets(
                                              imagePath: AppIconAssets.lineFull,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: SizeConfig.size8),
                                        Row(
                                          children: [
                                            CustomText(
                                              "Good",
                                              fontSize: SizeConfig.extraSmall,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.myColor,
                                            ),
                                            Spacer(),
                                            LocalAssets(
                                              imagePath:
                                                  AppIconAssets.lineEmpty,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: SizeConfig.size8),
                                        Row(
                                          children: [
                                            CustomText(
                                              "Average",
                                              fontSize: SizeConfig.extraSmall,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.myColor,
                                            ),
                                            Spacer(),
                                            LocalAssets(
                                              imagePath:
                                                  AppIconAssets.lineEmpty,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: SizeConfig.size8),
                                        Row(
                                          children: [
                                            CustomText(
                                              "Poor",
                                              fontSize: SizeConfig.extraSmall,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.myColor,
                                            ),
                                            Spacer(),
                                            LocalAssets(
                                              imagePath: AppIconAssets.lineHalf,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.size80),
                      CustomBtn(
                        onTap: () {},
                        title: "Select Slots",
                        bgColor: AppColors.green75,
                        height: SizeConfig.size48,
                        width: SizeConfig.size390,
                        radius: SizeConfig.size8,
                      ),

                      SizedBox(height: SizeConfig.size40),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
