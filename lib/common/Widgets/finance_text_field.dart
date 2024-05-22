import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/constants/app_color.dart';

class FinanceTextField extends StatefulWidget {
  final String label;
  final String hint;
  final bool isPassword;
  final String? helperText;

  const FinanceTextField({
    required this.label,
    required this.hint,
    this.isPassword = false,
    this.helperText,
  });

  @override
  State<FinanceTextField> createState() => _FinanceTextFieldState();
}

class _FinanceTextFieldState extends State<FinanceTextField> {
  late bool isObscure = widget.isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: AppColors.greenLigthOne),
        ),
        helperText: widget.helperText,
        helperStyle: TextStyle(color: Colors.grey),
        labelText: widget.label,
        labelStyle: TextStyle(color: Colors.grey),
        hintText: widget.hint,
        hintStyle: TextStyle(color: AppColors.greenLigthTwo),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: AppColors.greenLigthOne),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  isObscure ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.greenLigthTwo,
                ),
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
              )
            : null,
      ),
      obscureText: isObscure,
    );
  }
}
