import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:item_app/helpers/extensions.dart';


class AppTextField extends StatelessWidget {
  const AppTextField({super.key,
    this.controller,
    this.onChanged,
    this.hint,
    this.label,
    this.validator,
    this.borderRadius,
    this.borderColor,
    this.focusedBorderColor,
    this.maxLines,
    this.minLines,
    this.maxLength,
    this.onTap,
    this.labelSuffix,
    this.textStyle,
    this.readOnly,
    this.enabled,
    this.keyboardType,
    this.keyboardAction,
    this.height,
    this.width,
    this.labelFontSize,
    this.borderWidth,
    this.suffix,
    this.prefix,
    this.focusNode,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.autoValidateMode,
    this.textColor,
    this.onFocusChanged,
    this.contentPadding,
    this.inputFormatters,
    this.customLabel, this.obscureText, this.obscuringCharacter, this.hideMaxLengthCounter,
    this.textAlign, this.textAlignVertical,
    this.fillColor,
    this.hintColor,
    this.mainAxisAlignment,
    this.border,
    this.counterTextStyle,
    this.autoFocus,
  });

  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Widget? customLabel;
  final String? hint;
  final String? label;
  final String? labelSuffix;
  final String? Function(String?)? validator;
  final AutovalidateMode? autoValidateMode;
  final TextStyle? textStyle;
  final TextStyle? counterTextStyle;

  final double? borderRadius;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final Color? textColor;
  final Color? fillColor;
  final Color? hintColor;

  final int? maxLines;
  final int? minLines;
  final int? maxLength;

  final Function()? onTap;

  final bool? enabled;
  final bool? readOnly;
  final bool? obscureText;
  final bool? autoFocus;
  final String? obscuringCharacter;
  final String? hideMaxLengthCounter;
  final TextInputType? keyboardType;
  final TextInputAction? keyboardAction;

  final double? height;
  final double? width;
  final double? labelFontSize;
  final double? borderWidth;

  final Widget? suffix;
  final Widget? prefix;

  final FocusNode? focusNode;
  final Function()? onEditingComplete;
  final Function(String)? onFieldSubmitted;
  final Function(bool)? onFocusChanged;

  final EdgeInsets? contentPadding;

  final List<TextInputFormatter>? inputFormatters;

  final TextAlign? textAlign;
  final TextAlignVertical? textAlignVertical;

  final MainAxisAlignment? mainAxisAlignment;

  final InputBorder? border;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
    children: [
      if(label != null || customLabel != null)...[
        Padding(
          padding: const EdgeInsets.only(bottom: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if(label != null)...[
                Text(
                  label!,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.w400,
                    fontSize: labelFontSize ?? 16,
                  ),
                ),
              ],
              if(customLabel != null)...[
                customLabel!,
              ],
            ],
          ),
        ),
      ],
      SizedBox(
        height: height,
        width: width,
        child: Focus(
          onFocusChange: onFocusChanged,
          autofocus: autoFocus ?? false,
          child: TextFormField(
            focusNode: focusNode,
            key: key,
            maxLength: maxLength,
            controller: controller,
            maxLines: height == null ? maxLines ?? 1 : null,
            minLines: height == null ? minLines ?? 1 : null,
            validator: validator,
            onTap: onTap,
            textAlignVertical: textAlignVertical ?? TextAlignVertical.center,
            textAlign: textAlign ?? TextAlign.start,
            expands: height != null,
            onChanged: onChanged,
            readOnly: readOnly ?? false,
            enabled: enabled ?? true,
            obscureText: obscureText ?? false,
            obscuringCharacter: obscuringCharacter ?? '•',
            keyboardType: keyboardType,
            inputFormatters: inputFormatters,
            autovalidateMode: autoValidateMode ?? AutovalidateMode.disabled,
            textInputAction: keyboardAction,
            onEditingComplete: onEditingComplete,
            onFieldSubmitted: onFieldSubmitted,
            cursorColor: textColor ?? Theme.of(context).colorScheme.onSurface,
            cursorWidth: 1,
            style: textStyle ??
                Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: textColor ?? Theme.of(context).colorScheme.onSurface,
                ),
            decoration: InputDecoration(
              hintText: hint,
              filled: true,
              hintStyle: (textStyle ?? Theme.of(context).textTheme.bodyLarge)?.copyWith(
                color: hintColor ?? Theme.of(context).colorScheme.onSurface.withOpacity(.5),
              ),
              fillColor: fillColor ?? Colors.transparent,
              contentPadding: contentPadding ?? const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
              border: border ?? OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 5)),
                borderSide: BorderSide(
                  color: borderColor ?? context.colorScheme.onSurface,
                  width: borderWidth ?? 1,
                ),
              ),
              focusedBorder: border ?? OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 5)),
                borderSide: BorderSide(
                  color: borderColor ?? context.colorScheme.onSurface,
                  width: borderWidth ?? 1,
                ),
              ),
              enabledBorder: border ?? OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 5)),
                borderSide: BorderSide(
                  color: borderColor ?? context.colorScheme.onSurface,
                  width: borderWidth ?? 1,
                ),
              ),
              disabledBorder: border ?? OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 5)),
                borderSide: BorderSide(
                  color: borderColor ?? context.colorScheme.onSurface,
                  width: borderWidth ?? 1,
                ),
              ),
              suffixIcon: suffix,
              suffixIconConstraints: const BoxConstraints(),
              prefixIcon: prefix,
              prefixIconConstraints: const BoxConstraints(),
              counterText: hideMaxLengthCounter ?? '',
              counterStyle: counterTextStyle ?? TextStyle(
                color: Colors.red,
                fontSize: 12,
              ),

            ),
          ),
        ),
      ),
    ],
  );
}

