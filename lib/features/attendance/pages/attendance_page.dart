import 'package:absensi/common/theme.dart';
import 'package:absensi/utils/constants/route.dart';
import 'package:flutter/material.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendanceStatePage();
}

class _AttendanceStatePage extends State<AttendancePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  'Absen Masuk',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 20),
                Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Center(
                    child: Text(
                      'Ambil Foto',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Anda terdeteksi sebagai:',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Budi Santoso',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    const SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: redColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: () {},
                        child: const Text('Ulangi'),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.attendanceSuccess,
                          );
                        },
                        child: const Text('Submit'),
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
