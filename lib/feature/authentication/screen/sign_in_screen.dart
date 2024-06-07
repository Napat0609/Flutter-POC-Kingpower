import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_kingpower/base_widget/base_app_bar_widget.dart';
import 'package:poc_kingpower/base_widget/base_button_widget.dart';
import 'package:poc_kingpower/base_widget/base_scaffold_widget.dart';
import 'package:poc_kingpower/base_widget/base_text_field_widget.dart';
import 'package:poc_kingpower/base_widget/custom_text_field_widget.dart';
import 'package:poc_kingpower/core/mixin/input_validation_mixin.dart';
import 'package:poc_kingpower/core/router/route_name.dart';
import 'package:poc_kingpower/core/style/app_color.dart';
import 'package:poc_kingpower/core/style/app_style.dart';
import 'package:poc_kingpower/feature/authentication/controller/authentication_controller.dart';
import 'package:poc_kingpower/feature/setting/controller/setting_controller.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen>
    with InputValidationMixin {
  final _formKey = GlobalKey<FormBuilderState>();
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return BaseScaffoldWidget(
      appBar: BaseAppBarWidget(
        title: Text(
          'login.title'.tr(),
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
        ],
      ),
      bodyBuilder: (context, constraints) {
        return SingleChildScrollView(
          child: FormBuilder(
            key: _formKey,
            onChanged: () {
              final _formField = _formKey.currentState;

              if (_formField != null) {
                ref
                    .read(authenticationControllerProvider.notifier)
                    .setFormField(_formField);
              }
            },
            child: Padding(
              padding: EdgeInsets.all(
                16.r,
              ),
              child: Column(
                children: [
                  CustomTextFieldWidget(
                    name: 'email',
                    labelText: 'email'.tr(),
                    validator: combine([
                      withMessage(
                        'required',
                        isTextEmpty,
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomTextFieldWidget(
                    name: 'password',
                    obscureText: !isShow,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isShow = !isShow;
                        });
                      },
                      child: Text(isShow ? 'ไม่แสดง' : 'แสดง'),
                    ),
                    labelText: 'password'.tr(),
                    validator: combine([
                      withMessage(
                        'required',
                        isTextEmpty,
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  BaseButtonWidget(
                    onTap: () async {
                      final isValid = _formKey.currentState?.validate();
                      if (isValid != null && isValid) {
                        final result = await ref
                            .read(authenticationControllerProvider.notifier)
                            .onLogin();

                        if (result) {
                          context.goNamed(accountRoute);
                        }
                      }
                    },
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  BaseButtonWidget(
                    txt: 'register.title'.tr(),
                    onTap: () {
                      context.goNamed(signUpRoute);
                    },
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const Text('money').plural(
                    100,
                    format: NumberFormat.compact(
                      locale: context.locale.toString(),
                    ),
                  ),
                  BaseButtonWidget(
                    txt: 'Download PDF',
                    onTap: () {
                      ref
                          .read(authenticationControllerProvider.notifier)
                          .onGetPDF();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
