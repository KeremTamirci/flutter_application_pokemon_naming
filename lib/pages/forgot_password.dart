import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late TextEditingController _controllerMail;
  late TextEditingController _controllerLoginPassword;
  String mail = "";

  Future<void> resetPassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: mail);
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    _controllerLoginPassword = TextEditingController();
    _controllerMail = TextEditingController();
  }

  @override
  void dispose() {
    _controllerMail.dispose();
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
                controller: _controllerMail,
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
            Wrap(
              children: [
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        context.go("/");
                      },
                      child: Text("Back")),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () async {
                        await resetPassword();
//                        await authenticate();
                        // context.go("/register");
                        // Bunu başka nasıl yapabilirim bilmiyorum
                      },
                      child: Text("Send Mail")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
