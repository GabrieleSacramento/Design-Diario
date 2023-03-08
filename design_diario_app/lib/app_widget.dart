import 'package:design_diario_app/presentation/home_page/home_page.dart';
import 'package:design_diario_app/presentation/login/login_page.dart';
import 'package:design_diario_app/presentation/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DesignDiarioApp extends StatelessWidget {
  const DesignDiarioApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          "/": (context) => HomePage(),
          "/login-page": (context) => const LoginPage(),
          "/register-page": (context) => const RegisterPage(),
        },
      ),
    );
  }
}
