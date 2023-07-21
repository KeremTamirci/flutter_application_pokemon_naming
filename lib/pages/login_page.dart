import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _controllerLoginMail;
  late TextEditingController _controllerLoginPassword;
  String loginPassword = "";
  String loginMail = "";

  Future<void> authenticate() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: loginMail, password: loginPassword);
      isLoggedIn = true;
    } on FirebaseAuthException catch (e) {
      isLoggedIn = false;
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _controllerLoginPassword = TextEditingController();
    _controllerLoginMail = TextEditingController();
  }

  @override
  void dispose() {
    _controllerLoginMail.dispose();
    _controllerLoginPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-Mail',
                ),
                onSubmitted: (String mailValue) {
                  loginMail = mailValue;
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                onSubmitted: (String passwordValue) {
                  // print(passwordValue);
                  setState(() {
                    loginPassword = passwordValue;
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
              children: [
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () async {
//                        await authenticate();
                        context.go("/register");
                        // Bunu başka nasıl yapabilirim bilmiyorum
                      },
                      child: Text("Sign Up")),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () async {
                        print(loginMail);
                        print(loginPassword);

                        await authenticate();
                        context.go("/");
                        // Bunu başka nasıl yapabilirim bilmiyorum
                      },
                      child: Text("Login")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
