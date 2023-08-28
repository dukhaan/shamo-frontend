import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shamo/pages/sign_in_page.dart';
import 'package:shamo/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context,
          '/sign-in'), // Menggunakan pushReplacementNamed agar halaman SplashPage dihapus dari stack navigasi.
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
          child: Container(
        width: 130,
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image_splash.png'),
          ),
        ),
      )),
    );
  }
}
