import 'package:absensi/features/auth/widgets/button_widget.dart';
import 'package:absensi/features/auth/widgets/input_widget.dart';
import 'package:absensi/features/auth/widgets/label_widget.dart';
import 'package:absensi/utils/constants/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          // color: Colors.red,
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 100,
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'SMK NEGERI 2 KELAPA 2',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Ayo Absen Sekarang!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LabelWidget(title: 'Email'),
                          InputWidget(
                            hintText: 'Masukkan email kamu',
                            controller: _emailController,
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LabelWidget(title: 'Kata Sandi'),
                          InputWidget(
                              hintText: 'Masukkan kata sandi kamu',
                              controller: _passwordController,
                              isObscureText: _isObscureText,
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isObscureText = !_isObscureText;
                                  });
                                },
                                icon: Icon(
                                  _isObscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.grey,
                                ),
                              )),
                        ],
                      ),
                      const SizedBox(height: 32),
                      ButtonWidget(
                          title: 'Masuk',
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              RouteName.attendanceBoarding,
                            );
                          })
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
