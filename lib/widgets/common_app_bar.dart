import 'package:flutter/material.dart';
import 'package:hobbyfi_assignment/core/constants/app_colors.dart';
import 'package:hobbyfi_assignment/core/constants/app_icon_assets.dart';
import 'package:hobbyfi_assignment/core/constants/size_config.dart';
import 'package:hobbyfi_assignment/core/constants/typedef_utils.dart';
import 'package:hobbyfi_assignment/l10n/app_localizations.dart';
import 'package:hobbyfi_assignment/widgets/custom_text_cm.dart';
import 'package:hobbyfi_assignment/widgets/local_assets.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    this.title,
    this.isLeading = true,
    this.showRightButton = false,
    this.rightButtonText,
    this.rightButtonColor,
    this.onRightButtonTap,
    this.titleColor,
    this.leadingIconColor,
    this.onBackTap,
    this.appBarColor,
  });
  final String? title;
  final bool? isLeading;
  final bool? showRightButton;
  final String? rightButtonText;
  final Color? rightButtonColor;
  final Color? titleColor;
  final OnTab? onRightButtonTap;
  final OnTab? onBackTap;
  final Color? appBarColor;
  final Color? leadingIconColor;

  @override
  Widget build(BuildContext context) {
    AppLocalizations.of(context);
    return AppBar(
      elevation: 4,
      // shadowColor: Colors.black26,
      surfaceTintColor: AppColors.white,
      backgroundColor: appBarColor ?? Colors.white,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      centerTitle: (isLeading ?? false) ? true : false,
      title: Padding(
        padding: EdgeInsets.only(
          right: SizeConfig.paddingXSL,
          bottom: SizeConfig.paddingXSL,
        ),
        child: Row(
          children: [
            if (isLeading ?? false)
              IconButton(
                padding: EdgeInsets.zero,
                onPressed:
                    onBackTap ??
                    () async {
                      Navigator.of(context).pop();
                    },
                icon: LocalAssets(
                  imagePath: AppIconAssets.backArrow,
                  height: SizeConfig.extraLarge21,
                  width: SizeConfig.extraLarge21,
                  imgColor: leadingIconColor ?? Colors.black,
                ),
              ),
            if (title?.isNotEmpty ?? false)
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.paddingXSL,
                    bottom: SizeConfig.paddingXSL,
                    left: (isLeading == true) ? 0 : SizeConfig.size20,
                  ),
                  child: CustomText(
                    title ?? "",
                    fontSize: SizeConfig.large,
                    color: titleColor ?? AppColors.black,
                    fontWeight: FontWeight.w600,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
          ],
        ),
      ),
      actions: [
        // if (showRightTextButton ?? false)
        //   Padding(
        //     padding: EdgeInsets.only(right: SizeConfig.size20),
        //     child: TextButton(
        //       onPressed: onRightTextButtonTap ?? () {},
        //       child: Text(
        //         rightTextButtonText ?? '',
        //         style: TextStyle(
        //           color: rightTextButtonColor ?? AppColors.black,
        //           fontWeight: FontWeight.w600,
        //           fontSize: SizeConfig.medium,
        //         ),
        //       ),
        //     ),
        //   ),
        if (showRightButton ?? false)
          IconButton(
            padding: EdgeInsets.zero,
            onPressed:
                onRightButtonTap ??
                () async {
                  Navigator.of(context).pop();
                },
            icon: LocalAssets(
              imagePath: AppIconAssets.download,
              height: SizeConfig.medium15,
              width: SizeConfig.medium,
              imgColor: rightButtonColor ?? Colors.black,
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
