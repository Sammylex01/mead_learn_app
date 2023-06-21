import 'package:flutter/material.dart';

class AppMainMenu extends StatefulWidget {
  const AppMainMenu({Key? key}): super(key: key);

  @override
  State<AppMainMenu> createState() => _AppMainMenuState();
}

class _AppMainMenuState extends State<AppMainMenu> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.grey,
              textStyle: const TextStyle(fontSize: 20, color: Colors.black),
              padding: const EdgeInsets.all(16.0),
            ),
            onPressed: () {},
            child: const Text('Subjects'),
          ),
          const SizedBox(height: 30),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey,
              textStyle: const TextStyle(fontSize: 20, color: Colors.black),
              padding: const EdgeInsets.all(16.0),
            ),
            onPressed: () {},
            child: const Text('Notepad'),
          ),
          const SizedBox(height: 30),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.grey,
              textStyle: const TextStyle(fontSize: 20, color: Colors.black),
              padding: const EdgeInsets.all(16.0),
            ),
            onPressed: () {},
            child: const Text('To-Do'),
          ),
          const SizedBox(height: 30),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.grey,
              textStyle: const TextStyle(fontSize: 20, color: Colors.black),
              padding: const EdgeInsets.all(16.0),
            ),
            onPressed: () {},
            child: const Text('Blog'),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}