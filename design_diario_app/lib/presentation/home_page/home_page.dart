
import 'package:design_diario_app/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Center(
          child: Container(
            width: 382,
            height: 438,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 31),
                  child: SizedBox(
                    width: 64,
                    height: 65,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ),
                const Text(
                  'Bem-vindo!',
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(83, 78, 78, 1)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 43, right: 43, top: 4),
                  child: Text(
                    'Bem-vindo ao Design Diário, o maior portal para se informar sobre design.',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(83, 78, 78, 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 33, right: 33, top: 32),
                  child: CustomButton(
                    buttonName: 'sou novo',
                    formKey: formKey,
                    onPressed: () {
                      Navigator.pushNamed(context, "/register-page");
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/login-page");
                  },
                  child: const Text(
                    'já tenho conta',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(24, 211, 190, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
