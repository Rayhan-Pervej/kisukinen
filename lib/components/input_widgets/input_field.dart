import 'package:flutter/material.dart';
import 'package:kisukinen/theme/color.dart';
import 'package:kisukinen/theme/text.dart';

import '../../services/utils/validators.dart';

class InputField extends StatefulWidget {
  final TextEditingController controller;
  final String fieldLabel;
  final String hintText;
  final bool validation;
  final bool? needTitle;
  final String errorMessage;
  final TextInputAction? textInputAction;
  final Color? backgroundColor;
  final TextAlign? textAlign;
  final TextStyle? hintTextStyle;
  final TextStyle? inputTextStyle;
  final Key? itemkey;
  final TextStyle? titleStyle;
  final Widget? prefixWidget;
  final bool? viewOnly;
  final FormFieldValidator<String>? validatorClass;
  final TextInputType? inputType;

  const InputField({
    super.key,
    required this.controller,
    required this.fieldLabel,
    required this.backgroundColor,
    required this.hintText,
    required this.validation,
    required this.errorMessage,
    this.needTitle,
    this.textInputAction,
    this.textAlign,
    this.hintTextStyle,
    this.itemkey,
    this.titleStyle,
    this.prefixWidget,
    this.viewOnly,
    this.validatorClass,
    this.inputTextStyle,
    this.inputType,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.needTitle ?? true)
          Text(widget.fieldLabel,
              style: widget.titleStyle ?? TextDesign().fieldLabel),
        if (widget.needTitle ?? true) const SizedBox(height: 5),
        TextFormField(
          key: widget.itemkey,
          controller: widget.controller,
          keyboardType: widget.inputType ?? TextInputType.text,
          style: widget.inputTextStyle ?? TextDesign().input,
          readOnly: widget.viewOnly ?? false,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            hintText: widget.hintText,
            hintStyle: widget.hintTextStyle ??
                TextDesign().input.copyWith(
                      color: MyColor.black,
                    ),
            filled: true,
            fillColor: widget.backgroundColor ?? MyColor.graySoft,
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: MyColor.black,
              width: 2,
            )),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: MyColor.black)),
            errorStyle: TextDesign().validator,
          ),
          validator:
              widget.validatorClass ?? ValidatorClass().noValidationRequired,
          textInputAction: widget.textInputAction ?? TextInputAction.next,
          onFieldSubmitted: (value) {
            widget.controller.text = value;
          },
        )
      ],
    );
  }
}
