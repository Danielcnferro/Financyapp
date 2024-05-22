// ignore_for_file: use_super_parameters

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/Widgets/primaryButton.dart';
import 'package:flutter_application_1/common/constants/app_color.dart';
import 'package:flutter_application_1/common/constants/app_text_styles.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60.0,
            ),
            Expanded(
              flex: 2,
              child: Image.asset('assets/images/Image.png'),
            ),
            Text(
              'Seja Inteligente',
              style: AppTextStyles.mediumText
                  .copyWith(color: AppColors.greenLigthOne),
            ),
            Text(
              'Economize',
              style: AppTextStyles.mediumText
                  .copyWith(color: AppColors.greenLigthOne),
            ),
            const SizedBox(height: 26.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PrimaryButton(
                text: 'ENTRAR',
                onPressed: () => log('ok'),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Já tem uma conta? ',
                  style:
                      AppTextStyles.smallText.copyWith(color: AppColors.grey),
                ),
                GestureDetector(
                  onTap: () => log('deu certo'),
                  child: Text(
                    'Criar',
                    style: AppTextStyles.smallText
                        .copyWith(color: AppColors.greenLigthOne),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
