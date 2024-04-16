library responsive_widgets;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

export 'package:flutter_screenutil/flutter_screenutil.dart';
part 'widgets/container_responsive_widget.dart';
part 'widgets/text_responsive_widget.dart';
part 'widgets/edge_insets_responsive.dart';
part 'widgets/sized_box_responsive_widget.dart';

class ResponsiveWidgets {
  static Widget builder({
    required double height,
    required double width,
    bool allowFontScaling = false,
    Widget? child,
  }) {
    return LayoutBuilder(
      builder: (context, constrains) {
        ResponsiveWidgets.init(
          context,
          height: height,
          width: width,
          allowFontScaling: allowFontScaling,
        );
        return child ?? SizedBox();
      },
    );
  }

  static void init(
    BuildContext context, {
    required double height,
    required double width,
    bool allowFontScaling = false,
  }) {
    ScreenUtil.init(
      context,
      designSize: Size(width, height),
      minTextAdapt: allowFontScaling,
    );
  }
}
