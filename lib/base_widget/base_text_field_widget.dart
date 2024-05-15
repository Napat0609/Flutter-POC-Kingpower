import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:poc_kingpower/core/style/dimens.dart';

class BaseTextFieldWidget extends StatefulWidget {
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
  final String? errorText;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? contentPadding;

  const BaseTextFieldWidget({
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
    this.errorText,
    this.constraints,
    this.contentPadding,
  });

  @override
  _BaseTextFieldWidgetState createState() => _BaseTextFieldWidgetState();
}

class _BaseTextFieldWidgetState extends State<BaseTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: widget.name,
      controller: widget.controller,
      obscureText: widget.obscureText,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        errorText: widget.errorText,
        isDense: widget.isDense,
        filled: widget.filled,
        fillColor: widget.fillColor,
        floatingLabelBehavior:
            widget.floatingLabelBehavior ?? FloatingLabelBehavior.always,
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
      validator: widget.validator,
    );
  }
}
