import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
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
  final formKey = GlobalKey<FormState>();
  late TextEditingController _controllerMail;
  late TextEditingController _controllerPassword;
  late String mail = "";
  late String password = "";

// For Firestore
  final db = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;

  void addToDatabase() {
    final User? currentUser = auth.currentUser;
    final uid = currentUser!.uid;
    String? emailid = currentUser.email;

    final user = <String, dynamic>{
      "mail": emailid,
      "uid": uid,
    };

    print("user: ${currentUser.toString()}");
    print("uid: $uid");
    print("mail: $emailid");
    // db.collection("Users").add(user);
    db.collection("Users").doc(uid).set({"mail": emailid, "uid": uid});
  }

  Future<void> authenticate() async {
    final theme = Theme.of(context);
    final style = theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.onBackground,
    );

    // final isValid = formKey.currentState!.validate();
    final isValid = EmailValidator.validate(_controllerMail.text.trim());
    if (!isValid) {
      print("Credentials are not valid");
      return;
    }

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
              child: CircularProgressIndicator(),
            ));

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _controllerMail.text.trim(),
        password: _controllerPassword.text.trim(),
      );
      isLoggedIn = true;
      addToDatabase();

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
      } else {
        print('Unable to create account');
        String errorText = 'Unable to create account';
        if (context.mounted) Navigator.pop(context);
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
      body: Form(
        key: formKey,
        child: Center(
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
                child: TextFormField(
                  controller: _controllerMail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-Mail',
                  ),
                  onFieldSubmitted: (String mailValue) {
                    mail = mailValue;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (email) => !EmailValidator.validate(
                          _controllerMail.text.trim(), true)
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
                  controller: _controllerPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  onFieldSubmitted: (String passwordValue) {
                    // print(passwordValue);
                    setState(() {
                      password = passwordValue;
                    });
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) =>
                      _controllerPassword.text.trim().length < 6
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
                          if (context.mounted && isLoggedIn) context.go("/");
                        },
                        child: Text("Sign Up")),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
