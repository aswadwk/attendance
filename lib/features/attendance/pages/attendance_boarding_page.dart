import 'package:absensi/common/theme.dart';
import 'package:absensi/features/auth/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AttendanceBoardingPage extends StatelessWidget {
  const AttendanceBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: primaryColor,
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          width: 100,
                        ),
                        Text(
                          'SMK NEGERI 2 KELAPA 2',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: Colors.white,
                              ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '08:00',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Senin, 20 September 2021',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'Selamat datang di Aplikasi Abesnsi, \nJangan lupakan aku ya!, \naku menunggumu di sekolah',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Container(
              // height: MediaQuery.of(context).size.height * 0.,
              // color: Colors.red,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 80,
                      left: 60,
                      right: 60,
                    ),
                    child: Column(
                      children: [
                        ButtonWidget(title: 'Masuk', onPressed: () {}),
                        const SizedBox(height: 18),
                        ButtonWidget(title: 'Pulang', onPressed: () {}),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  const SizedBox(height: 40),
                  const Text('SMK NEGERI 2 KELAPA 2')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
