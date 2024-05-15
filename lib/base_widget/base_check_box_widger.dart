import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:poc_kingpower/core/style/dimens.dart';

class BaseCheckboxWidget extends StatefulWidget {
  final String name;
  final Widget title;
  final String? Function(bool?)? validator;
  final Function(bool?)? onChanged;

  const BaseCheckboxWidget({
    super.key,
    required this.name,
    required this.title,
    this.validator,
    this.onChanged,
  });

  @override
  _BaseCheckboxWidget createState() => _BaseCheckboxWidget();
}

class _BaseCheckboxWidget extends State<BaseCheckboxWidget> {
  @override
  Widget build(BuildContext context) {
    return FormBuilderCheckbox(
      name: widget.name,
      title: widget.title,
      validator: widget.validator,
      onChanged: widget.onChanged,
    );
  }
}
