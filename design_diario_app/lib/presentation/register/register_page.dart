
import 'package:design_diario_app/presentation/widgets/custom_button.dart';
import 'package:design_diario_app/presentation/widgets/custom_form.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              'Preencha as informações para efetuar o cadastro',
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
                const CustomForm(label: 'Name'),
                const SizedBox(
                  height: 16,
                ),
                const CustomForm(label: 'Email'),
                const SizedBox(
                  height: 16,
                ),
                const CustomForm(label: 'senha'),
                
                const SizedBox(
                  height: 66,
                ),
                CustomButton(
                  buttonName: 'Cadastrar',
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
