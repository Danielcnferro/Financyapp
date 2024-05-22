import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/Widgets/primaryButton.dart';
import 'package:flutter_application_1/common/constants/app_color.dart';
import 'package:flutter_application_1/common/constants/app_text_styles.dart';

import '../../common/Widgets/finance_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Text(
              'Comece a Economizar',
              style: AppTextStyles.mediumText
                  .copyWith(color: AppColors.greenLigthOne),
              textAlign: TextAlign.center,
            ),
            Image.asset('assets/images/ImageSignUp.png'),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 22,
              ),
              child: Form(
                child: Column(
                  children: [
                    SizedBox(
                      height: 32,
                    ),
                    FinanceTextField(
                      hint: 'João Victor Pires',
                      label: 'Nome:',
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    FinanceTextField(
                      hint: 'abc@gmail.com',
                      label: 'EMAIL:',
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    FinanceTextField(
                      helperText: 'Obrigatorio letra maiuscula e um numero',
                      hint: 'Abc.1',
                      label: 'CRIE UMA SENHA',
                      isPassword: true,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    FinanceTextField(
                      hint: 'Abc.1',
                      label: 'CONFIRME SUA SENHA',
                      isPassword: true,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PrimaryButton(
              text: 'CRIAR CONTA',
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Já tem uma conta? ',
                style: AppTextStyles.smallText.copyWith(color: AppColors.grey),
              ),
              GestureDetector(
                onTap: () => log('deu certo'),
                child: Text(
                  'Entrar',
                  style: AppTextStyles.smallText
                      .copyWith(color: AppColors.greenLigthOne),
                ),
              )
            ],
          ),
          const SizedBox(height: 35.0),
        ],
      ),
    );
  }
}
