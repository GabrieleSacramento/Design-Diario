
import 'package:design_diario_app/presentation/widgets/custom_button.dart';
import 'package:design_diario_app/presentation/widgets/custom_form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 16, left: 16, right: 70, bottom: 32),
            child: Text(
              'Insira suas informações para realizar o login',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                const CustomForm(label: 'Email'),
                const SizedBox(
                  height: 16,
                ),
                const CustomForm(label: 'Senha'),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Esqueci minha senha',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                            color: Color.fromRGBO(83, 78, 78, 1)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 66,
                ),
                CustomButton(
                  buttonName: 'Entrar',
                  formKey: formKey,
                  onPressed: () {
                    formKey.currentState?.validate();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
