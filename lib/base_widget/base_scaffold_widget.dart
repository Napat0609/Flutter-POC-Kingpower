import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poc_kingpower/base_widget/loadiing_dialog_modal.dart';
import 'package:poc_kingpower/core/loader/loader_controller.dart';

class BaseScaffoldWidget extends ConsumerWidget {
  final Widget Function(BuildContext, BoxConstraints) bodyBuilder;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final PreferredSizeWidget? appBar;
  final bool extendBodyBehindAppBar;
  final bool resizeToAvoidBottomInset;
  final Color? bgColor;
  final bool isSafeBottom;
  final bool isSafeTop;
  final bool? isLoading;
  final bool hasAppBar;
  final bool isAppearBottomBarWhenKeyboardShowing;

  const BaseScaffoldWidget({
    Key? key,
    required this.bodyBuilder,
    this.bgColor,
    this.appBar,
    this.extendBodyBehindAppBar = false,
    this.resizeToAvoidBottomInset = true,
    this.isSafeBottom = true,
    this.isSafeTop = true,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.isLoading,
    this.hasAppBar = false,
    this.isAppearBottomBarWhenKeyboardShowing = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(
      loaderControllerProivder.select(
        (value) => value,
      ),
    );

    return Stack(
      children: [
        Scaffold(
          bottomNavigationBar: Padding(
            padding: isAppearBottomBarWhenKeyboardShowing
                ? MediaQuery.of(context).viewInsets
                : EdgeInsets.zero,
            child: bottomNavigationBar,
          ),
          body: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              // for remove primary focus and trigger the keyboard to dismiss.
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: SafeArea(
              bottom: isSafeBottom,
              top: isSafeTop,
              child: LayoutBuilder(
                builder: bodyBuilder,
              ),
            ),
          ),
          appBar: appBar,
          backgroundColor: bgColor,
          extendBodyBehindAppBar: extendBodyBehindAppBar,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          bottomSheet: bottomSheet,
        ),
        if (isLoading)
          LoadingDialogModal.asyncLoading(
            isLoading: isLoading,
          ),
      ],
    );
  }
}
