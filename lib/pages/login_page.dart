import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:email_validator/email_validator.dart';

import '../main.dart';
import '../models/pokemon.dart';
import '../services/data_scraper.dart';
import 'register_page.dart';

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
    final theme = Theme.of(context);
    final style = theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.onBackground,
    );

    if (!EmailValidator.validate(_controllerLoginMail.text.trim())) return;

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
              child: CircularProgressIndicator(),
            ));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _controllerLoginMail.text.trim(),
          password: _controllerLoginPassword.text.trim());
      isLoggedIn = true;
      await userInit();
      if (context.mounted) Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      isLoggedIn = false;
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        String errorText = 'No user found for that email.';
        if (context.mounted) Navigator.pop(context);
        showDialog(
            context: context,
            builder: (context) =>
                ErrorMessageDialog(errorText: errorText, style: style));
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        String errorText = 'Wrong password provided for that user.';
        if (context.mounted) Navigator.pop(context);
        showDialog(
            context: context,
            builder: (context) =>
                ErrorMessageDialog(errorText: errorText, style: style));
      } else {
        print('No user found for that email');
        String errorText = 'No user found for that email';
        if (context.mounted) Navigator.pop(context);
        showDialog(
            context: context,
            builder: (context) =>
                ErrorMessageDialog(errorText: errorText, style: style));
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
              "Login Screen",
              style: style,
            ),
            SizedBox(
              height: 80,
            ),
            SizedBox(
              width: 250,
              child: TextFormField(
                controller: _controllerLoginMail,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-Mail',
                ),
                onFieldSubmitted: (String mailValue) {
                  loginMail = mailValue;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (email) => !EmailValidator.validate(
                        _controllerLoginMail.text.trim(), true)
                    ? "Enter a valid email"
                    : null,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              child: TextFormField(
                controller: _controllerLoginPassword,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                onFieldSubmitted: (String passwordValue) {
                  // print(passwordValue);
                  setState(() {
                    loginPassword = passwordValue;
                  });
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) =>
                    _controllerLoginPassword.text.trim().length < 6
                        ? "Enter at least 6 characters"
                        : null,
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
                        if (context.mounted) context.go("/");
                        // Bunu başka nasıl yapabilirim bilmiyorum
                      },
                      child: Text("Log in")),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: theme.primaryColor),
              ),
              onTap: () {
                context.go("/forgotpassword");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ErrorMessageDialog extends StatelessWidget {
  const ErrorMessageDialog({
    super.key,
    required this.errorText,
    required this.style,
  });

  final String errorText;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 100,
        child: ColoredBox(
            color: Colors.white,
            child: Center(
              child: Text(
                errorText,
                style: style,
                textAlign: TextAlign.center,
              ),
            )),
      ),
    );
  }
}
