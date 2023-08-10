import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';

class TestingPage extends StatefulWidget {
  const TestingPage({super.key});

  @override
  State<TestingPage> createState() => _TestingPageState();
}

class _TestingPageState extends State<TestingPage> {
  final usersQuery = FirebaseFirestore.instance.collection('AllPokemon');

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.headlineSmall!.copyWith(
      color: theme.colorScheme.primary,
    );
    return FirestoreListView<Map<String, dynamic>>(
      query: usersQuery,
      itemBuilder: (context, snapshot) {
        Map<String, dynamic> user = snapshot.data();
        return SizedBox(
          height: 200,
          width: 200,
          child: Wrap(
            children: [
              Center(
                child: SizedBox(
                  width: 200,
                  height: 155,
                  child: Image.network(
                    user['sprites']['front_default'],
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Center(
                child: Text(
                  '${user['name']}',
                  style: style,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
