import 'package:flutter/widgets.dart';

abstract final class Responsive {
  static const double compactBreakpoint = 600;
  static const double mediumBreakpoint = 840;
  static const double contentMaxWidth = 720;

  static double widthOf(BuildContext context) =>
      MediaQuery.sizeOf(context).width;

  static bool isCompact(BuildContext context) =>
      widthOf(context) < compactBreakpoint;

  static bool isMedium(BuildContext context) {
    final width = widthOf(context);
    return width >= compactBreakpoint && width < mediumBreakpoint;
  }

  static bool isExpanded(BuildContext context) =>
      widthOf(context) >= mediumBreakpoint;

  static double pagePadding(BuildContext context) {
    if (isExpanded(context)) {
      return 32;
    }
    if (isMedium(context)) {
      return 24;
    }
    return 16;
  }
}
