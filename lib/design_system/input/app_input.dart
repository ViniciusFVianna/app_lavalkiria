import 'package:app_lavalkiria/design_system/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppInput extends StatelessWidget {
  final String label;
  final String hint;
  final bool? obscureText;
  final bool hasError;
  final String? errorText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;

  const AppInput({
    super.key,
    required this.label,
    required this.hint,
    this.validator,
    this.controller,
    this.obscureText = false,
    this.hasError = false,
    this.errorText,
    this.keyboardType,
    this.onChanged,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: .start,
    crossAxisAlignment: .start,
    children: [
      Text(
        label,
        style: const TextStyle(
          color: AppColors.primaryIce,
          fontWeight: .w400,
          fontSize: 16,
        ),
      ),
      const SizedBox(height: 8),
      Container(
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
          ),
          color: AppColors.primaryWhite,
        ),
        child: TextFormField(
          controller: controller,
          obscureText: obscureText!,
          validator: validator,
          keyboardType: keyboardType,
          onChanged: onChanged,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              color: AppColors.darkPrimaryBase,
              fontWeight: .w400,
              fontSize: 16,
            ),
            filled: false,
            fillColor: AppColors.primaryIce,
            alignLabelWithHint: true,
            border: InputBorder.none,
          ),
        ),
      ),
      const SizedBox(height: 8),
      if (hasError)
        Container(
          width: MediaQuery.sizeOf(context).width,
          alignment: .centerRight,
          child: Text(errorText!, style: const TextStyle(color: Colors.red)),
        ),
    ],
  );
}
