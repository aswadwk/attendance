import 'package:absensi/common/theme.dart';
import 'package:absensi/features/auth/widgets/button_widget.dart';
import 'package:absensi/utils/constants/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AttendanceSuccessPage extends StatelessWidget {
  const AttendanceSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/calendar-stats.png',
                color: primaryColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: const [
                    Text(
                      'Absen Berhasil',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      textAlign: TextAlign.center,
                      'Hi, Budi Santoso, Absen masuk kamu berhasil dilakukan pada 12 Agustus 2021 pukul 08:00 WIB',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ButtonWidget(
                  title: 'Kembali',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, RouteName.signIn, (route) => false);
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
