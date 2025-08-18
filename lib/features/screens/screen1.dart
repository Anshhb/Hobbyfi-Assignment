import 'package:flutter/material.dart';
import 'package:hobbyfi_assignment/core/constants/app_colors.dart';
import 'package:hobbyfi_assignment/core/constants/app_icon_assets.dart';
import 'package:hobbyfi_assignment/core/constants/size_config.dart';
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
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CommonAppBar(
        title: "Request to Join",
        isLeading: true,
        showRightButton: true,
        rightButtonColor: AppColors.black,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: SizeConfig.size140,
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
                            imagePath: AppIconAssets.load_icon,
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

            height: SizeConfig.size164,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
