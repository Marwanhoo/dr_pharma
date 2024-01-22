// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    this.suffixIcon,
    this.onTap,
    this.enabled = true,
    this.showCursor = true,
    this.readOnly = false,
    this.obscureText = false,
    this.borderRadius = 15,
    this.suffixIconColor = Colors.grey,
  });

  final IconData prefixIcon;
  final IconData? suffixIcon;
  final String hintText;
  final VoidCallback? onTap;
  final bool enabled;
  final bool showCursor;
  final bool readOnly;
  final bool obscureText;
  final double borderRadius ;
  final Color suffixIconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
          ),
        ],
      ),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.grey,
          ),
          suffixIcon: suffixIcon != null
              ? Icon(
                  suffixIcon,
                  color: suffixIconColor,
                )
              : null,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
        onTap: onTap,
        enabled: enabled,
        showCursor: showCursor,
        readOnly: readOnly,
      ),
    );
  }
}
