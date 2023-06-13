import 'package:absensi/features/attendance/pages/attendance_boarding_page.dart';
import 'package:absensi/features/attendance/pages/attendance_page.dart';
import 'package:absensi/features/attendance/pages/attendance_success_page.dart';
import 'package:absensi/features/auth/pages/sign_in_page.dart';
import 'package:absensi/utils/constants/route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            // minimumSize: const Size.fromHeight(50),
            // rounded rectangle
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      home: const SignInPage(),
      initialRoute: '/',
      routes: {
        RouteName.signIn: (context) => const SignInPage(),
        RouteName.attendanceBoarding: (context) =>
            const AttendanceBoardingPage(),
        RouteName.attendance: (context) => const AttendancePage(),
        RouteName.attendanceSuccess: (context) => const AttendanceSuccessPage(),
      },
    );
  }
}
