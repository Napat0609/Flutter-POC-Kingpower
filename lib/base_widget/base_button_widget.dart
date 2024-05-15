import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poc_kingpower/core/style/app_style.dart';

class BaseButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String? txt;

  const BaseButtonWidget({
    super.key,
    required this.onTap,
    this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(8.r),
        child: Text(
          txt ?? 'submit'.tr(),
          style: AppStyle.buttonText(context),
        ),
      ),
    );
  }
}
