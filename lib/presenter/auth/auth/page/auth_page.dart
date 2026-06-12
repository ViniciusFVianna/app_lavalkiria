import 'package:app_lavalkiria/app/navigation/app_navigator.dart';
import 'package:app_lavalkiria/design_system/images/logo.dart';
import 'package:app_lavalkiria/design_system/theme/colors/app_colors.dart';
import 'package:app_lavalkiria/presenter/auth/auth/page/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../design_system/input/app_input.dart';
import '../../../home/page/home_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  AuthController controller = AuthController();

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: AppColors.primaryDark,
    body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        alignment: .center,
        child: Column(
          children: [
            SizedBox(height: 35),
            Container(
              width: MediaQuery.sizeOf(context).width,
              alignment: .centerRight,
              child: TextButton(
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Indisponível no protótipo')),
                ),
                child: Text(
                  'Criar Conta',
                  style: TextStyle(
                    color: AppColors.primaryWhite,
                    fontWeight: .w400,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 47),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Logo().call(),
            ),
            SizedBox(height: 44),
            _AuthForm(controller: controller),
            SizedBox(height: 44),
            ListenableBuilder(
              listenable: Listenable.merge([
                controller.hasEmailError,
                controller.hasPasswordError,
                controller.email,
                controller.password,
              ]),
              builder: (context, value) {
                return SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: controller.enabledButon
                        ? () => AppNavigator.pushReplacement(HomePage)
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryBase,
                      surfaceTintColor: AppColors.primaryBase,
                      disabledBackgroundColor: AppColors.primaryLight,
                      disabledForegroundColor: AppColors.primaryLight,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        color: controller.enabledButon
                            ? AppColors.primaryWhite
                            : AppColors.darkPrimaryBase,
                        fontWeight: .w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ),
  );
}

class _AuthForm extends StatelessWidget {
  final AuthController controller;

  const _AuthForm({required this.controller});

  @override
  Widget build(BuildContext context) => Form(
    child: Column(
      crossAxisAlignment: .start,
      mainAxisAlignment: .start,
      children: [
        ListenableBuilder(
          listenable: controller.hasEmailError,
          builder: (context, value) {
            return AppInput(
              label: 'Email',
              hint: 'Informe seu email',
              keyboardType: TextInputType.emailAddress,
              validator: (value) => controller.validateEmail(value),
              hasError: controller.hasEmailError.data,
              errorText: controller.hasEmailError.data
                  ? controller.emailError
                  : null,
              onChanged: (value) => controller.validateEmail(value),
            );
          },
        ),
        SizedBox(height: 16),
        ListenableBuilder(
          listenable: controller.hasPasswordError,
          builder: (context, value) {
            return AppInput(
              label: 'Senha',
              hint: 'Informe sua senha',
              obscureText: true,
              validator: (value) => controller.validatePassword(value),
              hasError: controller.hasPasswordError.data,
              errorText: controller.hasPasswordError.data
                  ? controller.passError
                  : null,
              onChanged: (value) => controller.validatePassword(value),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(6),
              ],
            );
          },
        ),
        SizedBox(height: 16),
        TextButton(
          onPressed: () => ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Indisponível no protótipo'))),
          child: Text(
            'Esqueci a senha',
            style: TextStyle(
              color: AppColors.primaryWhite,
              fontWeight: .w400,
              fontSize: 16,
            ),
          ),
        ),
      ],
    ),
  );
}
