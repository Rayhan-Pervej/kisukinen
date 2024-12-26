import 'package:flutter/material.dart';

import '../../services/utils/validators.dart';
import '../../theme/color.dart';
import '../../theme/text.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController password;
  final String fieldLabel;
  final String hintText;
  final Color? backgroundColor;
  final TextInputAction? textInputAction;
  const PasswordField({
    super.key,
    required this.password,
    required this.fieldLabel,
    required this.hintText,
    this.textInputAction,
    this.backgroundColor,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool hidePassword = true;
  bool hasSomePassword = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.fieldLabel, style: TextDesign().fieldLabel),
        const SizedBox(height: 5),
        TextFormField(
          autofocus: false,
          obscureText: hidePassword,
          controller: widget.password,
          style: TextDesign().input,
          onFieldSubmitted: (value) {
            widget.password.text = value;
          },
          onChanged: (value) {
            if (widget.password.text.isNotEmpty) {
              setState(() {
                // FocusScope.of(context).requestFocus();
                hasSomePassword = true;
              });
            } else {
              setState(() {
                hasSomePassword = false;
              });
            }
          },
          textInputAction: widget.textInputAction,
          validator: ValidatorClass().validatePassword,
          decoration: InputDecoration(
            focusColor: MyColor.softBlue,
            filled: true,
            fillColor: widget.backgroundColor ?? MyColor.white,
            suffixIcon: hasSomePassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                    icon: !hidePassword
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  )
                : const Icon(Icons.add, color: Colors.transparent),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            hintText: widget.hintText,
            hintStyle: TextDesign().input.copyWith(color: MyColor.black),
            errorStyle: TextDesign().validator,
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: MyColor.black,
              width: 2,
            )),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: MyColor.black)),
          ),
        ),
      ],
    );
  }
}
