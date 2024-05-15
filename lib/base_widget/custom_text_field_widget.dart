import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poc_kingpower/core/style/app_style.dart';
import 'package:poc_kingpower/core/style/dimens.dart';

class CustomTextFieldWidget extends StatefulWidget {
  final String name;
  final bool obscureText;
  final String? Function(String?)? validator;
  final Function(String?)? onChanged;
  final String labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final bool? isDense;
  final bool? filled;
  final Color? fillColor;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? contentPadding;

  const CustomTextFieldWidget({
    super.key,
    required this.name,
    this.validator,
    this.onChanged,
    this.obscureText = false,
    required this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.isDense,
    this.fillColor,
    this.filled,
    this.floatingLabelBehavior,
    this.focusedBorder,
    this.enabledBorder,
    this.constraints,
    this.contentPadding,
  });

  @override
  _CustomTextFieldWidgetState createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return FormBuilderField(
      name: widget.name,
      validator: widget.validator,
      builder: (FormFieldState<String> field) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 99, 90, 90),
                borderRadius: BorderRadius.circular(8.0),
                // border: Border.all(
                //     color: field.hasError
                //         ? Theme.of(context).colorScheme.error
                //         : Theme.of(context).colorScheme.primary),
              ),
              child: TextFormField(
                controller: widget.controller,
                obscureText: widget.obscureText,
                onChanged: (val) {
                  field.didChange(val);
                },
                decoration: InputDecoration(
                  labelText: widget.labelText,
                  hintText: widget.hintText,
                  isDense: widget.isDense,
                  filled: widget.filled,
                  fillColor: widget.fillColor,
                  floatingLabelBehavior: widget.floatingLabelBehavior ??
                      FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(kSmall),
                  ),
                  focusedBorder: widget.focusedBorder,
                  enabledBorder: widget.enabledBorder,
                  prefixIcon: widget.prefixIcon,
                  suffixIcon: widget.suffixIcon,
                  constraints: widget.constraints,
                  contentPadding: widget.contentPadding,
                ),
              ),
            ),
            if (field.errorText != null) ...[
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Text(
                  '${field.errorText}',
                  style: AppStyle.captionErrorText(context),
                ),
              )
            ],
          ],
        );
      },
    );
  }
}
