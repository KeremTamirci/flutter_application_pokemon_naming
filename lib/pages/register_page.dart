import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController _controllerMail;
  late TextEditingController _controllerPassword;
  late String mail = "";
  late String password = "";

  Future<void> authenticate() async {
    final theme = Theme.of(context);
    final style = theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.onBackground,
    );
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
              child: CircularProgressIndicator(),
            ));

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: mail,
        password: password,
      );
      isLoggedIn = true;
      print("after credential");
    } on FirebaseAuthException catch (e) {
      isLoggedIn = false;
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        if (context.mounted) Navigator.pop(context);
        String errorText = 'The password provided is too weak.';
        showDialog(
            context: context,
            builder: (context) =>
                ErrorMessageDialog(errorText: errorText, style: style));
      } else if (e.code == 'email-already-in-use') {
        if (context.mounted) Navigator.pop(context);
        print('The account already exists for that email.');
        String errorText = 'The account already exists for that email.';
        showDialog(
            context: context,
            builder: (context) =>
                ErrorMessageDialog(errorText: errorText, style: style));
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    _controllerPassword = TextEditingController();
    _controllerMail = TextEditingController();
  }

  @override
  void dispose() {
    _controllerMail.dispose();
    _controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onBackground,
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Register Screen",
              style: style,
            ),
            SizedBox(
              height: 80,
            ),
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
            SizedBox(
              width: 250,
              child: TextField(
                controller: _controllerPassword,
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
                        print(mail);
                        print(password);

                        await authenticate();
                        if (context.mounted) context.go("/");
                      },
                      child: Text("Sign Up")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
