import 'package:collectily/frontend/helper/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixIconPressed;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType keyboardType;
  final int? maxLines;
  final int? minLines;
  final ValueChanged<String>? onChanged;
  final FocusNode? focusNode;
  final bool readOnly;
  final bool enabled;
  final TextInputAction? textInputAction;
  final VoidCallback? onTap;
  final bool hasError; 
  final String? errorText; 
  final TextStyle? errorStyle; // Neuer Parameter für Fehlertext-Stil

  const CustomTextField({
    Key? key,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixIconPressed,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    this.minLines,
    this.onChanged,
    this.focusNode,
    this.readOnly = false,
    this.enabled = true,
    this.textInputAction,
    this.onTap,
    this.hasError = false,
    this.errorText,
    this.errorStyle, // Stil für den Fehlertext
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscureText,
        keyboardType: keyboardType,
        maxLines: maxLines,
        minLines: minLines,
        onChanged: onChanged,
        focusNode: focusNode,
        readOnly: readOnly,
        enabled: enabled,
        textInputAction: textInputAction,
        onTap: onTap,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          suffixIcon: suffixIcon != null
              ? IconButton(
                  icon: Icon(suffixIcon),
                  onPressed: onSuffixIconPressed,
                )
              : null,
          // Fehlertext anzeigen, wenn hasError true ist
          errorText: hasError ? errorText : null,
          // Stil für den Fehlertext anwenden
          errorStyle: errorStyle ?? TextStyle(
            fontSize: 14, // Standardgröße, falls kein Stil angegeben
            color: AppColors.error,
          ),
          // Rahmenfarbe anpassen, mit Standardrahmen wenn kein Fehler vorliegt
          enabledBorder: hasError 
              ? OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.error, width: 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                )
              : OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400, width: 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
          focusedBorder: hasError 
              ? OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.error, width: 2.0),
                  borderRadius: BorderRadius.circular(8.0),
                )
              : OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryLight, width: 2.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
        ),
      ),
    );
  }
}