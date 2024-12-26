import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../ui_padding.dart';

class AppTextField extends StatelessWidget {
  AppTextField(
      {super.key,
      this.controller,
      this.hintText,
      this.errorText,
      this.helperText,
      this.onChanged,
      this.maxLength,
      this.labelText,
      this.suffixIcon,
      this.prefixIcon,
      this.obscureText = false,
      this.maxLines = 1,
      this.helperMaxLines,
      this.textAlign = TextAlign.left,
      this.inputFormatters,
      this.enabled = true,
      this.textInputAction,
      this.textInputType,
      this.minLength = 1,
      this.minline = 1,
      this.suffixIconContraints,
      this.focusNode,
      this.suffix,
      this.validator,
      this.padding,
      this.onTapOutside,
      this.autovalidateMode = AutovalidateMode.disabled,
      this.isError = false,
      this.style,
      this.borderSide});

  final TextEditingController? controller;

  final String? hintText;
  final String? errorText;
  final String? labelText;
  final String? helperText;
  final Widget? suffixIcon;
  final Widget? suffix;
  final Widget? prefixIcon;
  final bool? obscureText;
  final int? maxLines;
  final int? helperMaxLines;
  final int? maxLength;
  final TextAlign? textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  final ValueChanged<String>? onChanged;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final int minLength;
  final int minline;
  final BoxConstraints? suffixIconContraints;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  Function(PointerDownEvent)? onTapOutside;
  EdgeInsetsGeometry? padding;
  AutovalidateMode autovalidateMode;
  final bool isError;
  final TextStyle? style;
  final BorderSide? borderSide;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      maxLines: maxLines,
      maxLength: maxLength,
      enabled: enabled,
      onChanged: onChanged,
      autovalidateMode: autovalidateMode,
      textAlign: textAlign ?? TextAlign.left,
      obscureText: obscureText ?? false,
      style: style ?? theme.textTheme.bodySmall,
      inputFormatters: inputFormatters ?? [],
      keyboardType: textInputType,
      textInputAction: textInputAction,
      minLines: minline,
      validator: validator,
      onTapOutside: onTapOutside,
      decoration: InputDecoration(
        errorText: errorText,
        errorStyle: const TextStyle(
          fontSize: 14,
        ),
        hintText: hintText,
        fillColor: theme.cardColor,
        filled: true,
        hintStyle: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSecondary),
        labelText: labelText,
        labelStyle: theme.textTheme.displayMedium,
        suffixIcon: suffixIcon,
        suffixIconConstraints: suffixIconContraints,
        prefixIcon: prefixIcon,
        helperMaxLines: helperMaxLines,
        helperText: helperText,
        helperStyle: theme.textTheme.bodyMedium?.copyWith(fontSize: 10),
        contentPadding: const EdgeInsets.symmetric(horizontal: UIPadding.space12, vertical: UIPadding.space12),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(UIPadding.radius10),
            // borderSide: BorderSide.none,
            borderSide: borderSide ?? BorderSide.none),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(UIPadding.radius10),
          borderSide: BorderSide(color: isError ? theme.colorScheme.error : Colors.grey),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(UIPadding.radius10),
          borderSide: BorderSide(color: isError == true ? theme.colorScheme.error : Colors.transparent),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(UIPadding.radius10),
          borderSide: BorderSide(color: isError == true ? theme.colorScheme.error : Colors.transparent),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(UIPadding.radius10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
