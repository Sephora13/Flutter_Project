import 'package:flutter/material.dart';
import 'package:untitled1/contacts_list.dart';
import 'package:untitled1/formulaire.dart';


void main() => runApp(MonApplication());

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,

      ),
      debugShowCheckedModeBanner: false,
      home: ContactList(),
    );
  }
}
