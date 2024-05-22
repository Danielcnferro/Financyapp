import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/constants/app_color.dart';
import 'package:flutter_application_1/common/constants/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const PrimaryButton({
    Key? key,
    this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(
        Radius.circular(33.0),
      ),
      onTap: onPressed,
      child: Ink(
        height: 67,
        width: 358,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(33.0),
          ),
          gradient: LinearGradient(
              colors: AppColors.greenGradient,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.mediumText18.copyWith(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
