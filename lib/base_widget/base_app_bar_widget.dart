import 'package:flutter/material.dart';

class BaseAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBarWidget({
    Key? key,
    this.leading,
    this.leadingWidth,
    this.title,
    required this.bgColor,
    this.isCenterTitle,
    this.iconThemeData,
    this.elevation,
    this.actions,
    this.titleSpacing,
    this.hideBackButton = false,
    this.bottom,
  }) : super(key: key);

  final Widget? leading;
  final double? leadingWidth;
  final Widget? title;
  final Color bgColor;
  final bool? isCenterTitle;
  final IconThemeData? iconThemeData;
  final double? elevation;
  final List<Widget>? actions;
  final double? titleSpacing;
  final bool hideBackButton;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: titleSpacing ?? 0,
      leading: hideBackButton ? Container() : leading,
      leadingWidth: hideBackButton ? 0 : leadingWidth,
      title: title,
      centerTitle: isCenterTitle ?? false,
      backgroundColor: bgColor,
      iconTheme: iconThemeData,
      actions: actions,
      elevation: elevation ?? 2,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        kToolbarHeight + (bottom?.preferredSize.height ?? 0.0),
      );
}
