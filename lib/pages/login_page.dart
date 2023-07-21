import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var password;
  var mail;

  Future<void> authenticate() async {
    try {
      // final credential =
      //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
      //   // email: mail,
      //   // password: password,
      // );
      // isLoggedIn = true;
      print("after credential");
    } on FirebaseAuthException catch (e) {
      // isLoggedIn = false;
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  // @override
  // void initState() {
  //   super.initState();
  //   _controllerPassword = TextEditingController();
  //   _controllerMail = TextEditingController();
  // }

  // @override
  // void dispose() {
  //   _controllerMail.dispose();
  //   _controllerPassword.dispose();
  //   super.dispose();
  // }

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
                  mail = mailValue;
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
                    password = passwordValue;
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
                        print(mail);
                        print(password);

                        await authenticate();
                        context.go("/register");
                        // Bunu başka nasıl yapabilirim bilmiyorum
                      },
                      child: Text("Sign Up")),
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () async {
                        print(mail);
                        print(password);

                        await authenticate();
                        context
                            .go("/"); // Bunu başka nasıl yapabilirim bilmiyorum
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
