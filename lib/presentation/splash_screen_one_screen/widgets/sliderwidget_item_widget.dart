import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SliderwidgetItemWidget extends StatelessWidget {
  const SliderwidgetItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgEllipse8,
      height: 298.adaptSize,
      width: 298.adaptSize,
      radius: BorderRadius.circular(
        149.h,
      ),
    );
  }
}
