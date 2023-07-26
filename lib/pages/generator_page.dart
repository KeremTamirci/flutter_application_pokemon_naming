import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/big_card.dart';
import '../viewmodel/my_app_state.dart';

// For Firestore
final db = FirebaseFirestore.instance;
final FirebaseAuth auth = FirebaseAuth.instance;

class GeneratorPage extends StatelessWidget {
  void databaseTest() {
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

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;
    // databaseTest();
    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigCard(pair: pair),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  appState.toggleFavorite();
                },
                icon: Icon(icon),
                label: Text('Like'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  appState.getNext();
                },
                child: Text('Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
