import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_kingpower/base_widget/base_app_bar_widget.dart';
import 'package:poc_kingpower/base_widget/base_button_widget.dart';
import 'package:poc_kingpower/base_widget/base_scaffold_widget.dart';
import 'package:poc_kingpower/core/router/route_name.dart';
import 'package:poc_kingpower/core/style/app_color.dart';
import 'package:poc_kingpower/core/style/app_style.dart';
import 'package:poc_kingpower/feature/account/controller/account_controller.dart';
import 'package:poc_kingpower/feature/authentication/controller/authentication_controller.dart';
import 'package:poc_kingpower/feature/setting/controller/setting_controller.dart';

class AccountScreen extends ConsumerStatefulWidget {
  const AccountScreen({super.key});

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends ConsumerState<AccountScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      ref.read(accountControllerProvider.notifier).getUserProfile();
    });
  }

  @override
  Widget build(BuildContext context) {
    final userProfile = ref.watch(accountControllerProvider.select(
      (value) => value.accountResponse,
    ));

    return BaseScaffoldWidget(
      appBar: BaseAppBarWidget(
        title: Text(
          'account',
          style: AppStyle.headline2Text(context),
        ),
        bgColor: gray200,
        elevation: 0,
        hideBackButton: true,
        isCenterTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              ref.read(settingControllerProvider.notifier).setLanguageCode();
            },
            child: Text(
              'changeLanguage'.tr(),
            ),
          ),
          GestureDetector(
            onTap: () async {
              final result = await ref
                  .read(authenticationControllerProvider.notifier)
                  .onLogout();

              if (result) {
                context.goNamed(signInRoute);
              }
            },
            child: const Text(
              'logout',
            ),
          ),
        ],
      ),
      bodyBuilder: (context, constraints) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(
              16.r,
            ),
            child: Column(
              children: [
                Text('${userProfile?.email}'),
                SizedBox(
                  height: 16.h,
                ),
                Text('${userProfile?.name} ${userProfile?.lastName}'),
                SizedBox(
                  height: 16.h,
                ),
                BaseButtonWidget(
                  onTap: () {
                    ref.read(settingControllerProvider.notifier).setThemeMode();
                  },
                  txt: 'Theme Mode',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
