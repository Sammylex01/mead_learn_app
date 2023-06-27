import 'package:flutter/material.dart';
import 'package:mead_learn_app/main_menu.dart';
import 'package:mead_learn_app/src/core/utilities/app_colors.dart';
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
                    child: const Text('Forgot Password?',
                    style: TextStyle(color: Colors.blue),),
                  ),
                  Container(
                      height: 50,
                      width: 200,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child:const Text('Login',
                            style: TextStyle(fontSize: 16)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )
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
                  // Expanded(
                  //   child: Column(
                  //     children: <Widget>[
                  //
                  //       TextButton(
                  //         child: const Text(
                  //           'Create Account',
                  //           style: TextStyle(fontSize: 20),
                  //         ),
                  //         onPressed: () {
                  //           //signup screen
                  //         },
                  //       )
                  //     ],
                  //   ),
                  // ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Divider(
                          color: Colors.grey,
                        ),
                        Container(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          margin: const EdgeInsets.fromLTRB(90, 0, 90, 0),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: ElevatedButton(
                                child:const Text('Google',
                                    style: TextStyle(fontSize: 16)),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AppMainMenu()));
                                },
                              ),
                            ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          margin: const EdgeInsets.fromLTRB(0, 0, 90, 0),
                          child: Align(alignment: Alignment.bottomRight,
                            child: ElevatedButton(
                              child:const Text('Teams',
                                  style: TextStyle(fontSize: 16)),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                                foregroundColor: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AppMainMenu()));
                              },
                            ),
                          ),
                        ),
                        TextButton(
                          child: const Text(
                            'Create Account',
                            style: TextStyle(fontSize: 12),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        ),
                      ],
                  ),),
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
