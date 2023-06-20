
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mead_learn_app/src/core/routes/route_manager.dart';
import 'package:mead_learn_app/src/core/utilities/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;



  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Container(
              height: 30,
              width: size.width * 0.6,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(splashImage), fit: BoxFit.fill)))),
    );
  }
}