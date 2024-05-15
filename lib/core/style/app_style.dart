import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  AppStyle._();

  static TextStyle headline1Text(BuildContext context) => TextStyle(
        color: Theme.of(context).primaryColorDark,
        fontSize: 24.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w800,
        leadingDistribution: TextLeadingDistribution.even,
        height: 1.33.h,
      );

  static TextStyle headline2Text(BuildContext context) => TextStyle(
        color: Theme.of(context).primaryColorDark,
        fontSize: 20.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w800,
        leadingDistribution: TextLeadingDistribution.even,
        height: 1.2.h,
      );

  static TextStyle headline3Text(BuildContext context) => TextStyle(
        color: Theme.of(context).primaryColorDark,
        fontSize: 16.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w800,
        leadingDistribution: TextLeadingDistribution.even,
        height: 1.5.h,
      );

  static TextStyle buttonText(BuildContext context) => TextStyle(
        color: Theme.of(context).primaryColorDark,
        fontSize: 14.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        leadingDistribution: TextLeadingDistribution.even,
        height: 1.43.h,
      );

  static TextStyle paragraph1Text(BuildContext context) => TextStyle(
        color: Theme.of(context).primaryColorDark,
        fontSize: 14.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        leadingDistribution: TextLeadingDistribution.even,
        height: 1.5.h,
      );

  static TextStyle paragraph2Text(BuildContext context) => TextStyle(
        color: Theme.of(context).primaryColorDark,
        fontSize: 14.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        leadingDistribution: TextLeadingDistribution.even,
        height: 1.43.h,
      );

  static TextStyle captionText(BuildContext context) => TextStyle(
        color: Theme.of(context).primaryColorDark,
        fontSize: 12.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        leadingDistribution: TextLeadingDistribution.even,
        height: 1.33.h,
      );

  static TextStyle caption2Text(BuildContext context) => TextStyle(
        color: Theme.of(context).primaryColorDark,
        fontSize: 12.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        leadingDistribution: TextLeadingDistribution.even,
        height: 1.5.h,
      );

  static TextStyle linkText(BuildContext context) => TextStyle(
        color: Theme.of(context).primaryColorDark,
        fontSize: 14.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        leadingDistribution: TextLeadingDistribution.even,
        height: 1.43.h,
      );

  static TextStyle tagText(BuildContext context) => TextStyle(
        color: Theme.of(context).primaryColorDark,
        fontSize: 14.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w800,
        leadingDistribution: TextLeadingDistribution.even,
        height: 1.43.h,
      );

  static TextStyle captionErrorText(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.error,
        fontSize: 12.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        leadingDistribution: TextLeadingDistribution.even,
        height: 1.5.h,
      );
}
