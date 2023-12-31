import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mead_learn_app/src/core/routes/route_manager.dart';
import 'package:mead_learn_app/src/features/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mead Learn App',
      onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: AppRoutes.splashRoute,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Mead Learn App',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey,
                textStyle: const TextStyle(fontSize: 20),
                padding: const EdgeInsets.all(16.0),
              ),
              onPressed: () {},
              child: const Text('Enter'),
            ),
            const SizedBox(height: 30),// This trailing comma makes auto-formatting nicer for build methods.
          ],
        ),
      ),
    );
  }
}

