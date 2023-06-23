import 'package:flutter/material.dart';
import 'package:mead_learn_app/main_menu.dart';
import 'package:mead_learn_app/src/core/utilities/images.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}): super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(loginBgImage), fit: BoxFit.fill)
              ),

            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  // const SizedBox(
                  //   height: 100,
                  //   width: 100
                  // ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.fromLTRB(90, 250, 90, 0),
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    margin: const EdgeInsets.fromLTRB(90, 10, 90, 0),
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        // icon: loginPasswordImage,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      //forgot password screen
                    },
                    child: const Text('Forgot Password?',  ),
                  ),
                  Container(
                      height: 50,
                      width: 200,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: const Text('Login',
                            style: TextStyle(fontSize: 16)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AppMainMenu()));
                        },
                      )
                  ),
                  Row(
                    children: <Widget>[
                      const Text('Does not have account?'),
                      TextButton(
                        child: const Text(
                          'Sign in',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          //signup screen
                        },
                      )
                    ],
                  ),
                ]
            ),

          // child:
          // ConstrainedBox(
          //   constraints: const BoxConstraints.tightFor(width: double.infinity, height: double.infinity),
          //
          // ),
          ),
      ),
    );
  }
}
