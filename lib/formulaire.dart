import 'dart:ui';

import 'package:flutter/material.dart';
import 'contacts.dart';
class Formulary extends StatelessWidget {
  String nom='';
  String nom_phonetique='';
  String surnom='';
  String Telephone='';
  String Groupes='';
  String informations_professionnelles='';
  String adresse='';
  String dates_importantes='';
  String relations='';
  String notes='';
  String Site_web='' ;
  final _keyForm = GlobalKey<FormState>();

  Formulary({super.key});
  bool showAdditionalFields = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white60,
          title: Text(
              'Mes contacts',
                  selectionColor: Colors.white,
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.save),
                iconSize: 30,
              onPressed: (){

              },
            )
          ],
          centerTitle: false,
        ),
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Container(
          padding:EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:<Widget> [
                SizedBox(height: 20.0, width:10.0,),
                TextFormField(
                  maxLength:10,
                  decoration: InputDecoration(
                    labelText: 'nom',
                      labelStyle: TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.black26,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                    prefix: IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {
                      },
                    )
                  ),
                ),
                SizedBox(height: 0.0,),
                TextFormField(
                  maxLength: 30,
                  decoration: InputDecoration(
                      labelText: 'nom_phonetique',
                      labelStyle: TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.black26,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      prefix: IconButton(
                        icon: Icon(Icons.person),
                        onPressed: () {
                        },
                      )
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 0.0,),
              TextFormField(
                maxLength: 10,
                decoration: InputDecoration(
                  labelText: 'surnom',
                    labelStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.black26,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                    prefix: IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {

                      },
                    )
                ),
                obscureText: true,
              ),
              SizedBox(height: 0.0,),
              TextFormField(
                maxLength: 30,
                decoration: InputDecoration(
                    labelText: 'Telephone',
                    labelStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.black26,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    prefix: IconButton(
                      icon: Icon(Icons.phone),
                      onPressed: () {
                      },
                    )
                ),
                obscureText: true,
              ),

                SizedBox(height: 0.0,),
                TextFormField(
                  maxLength: 30,
                  decoration: InputDecoration(
                      labelText: 'Groupes',
                      labelStyle: TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.black26,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      prefix: IconButton(
                        icon: Icon(Icons.group),
                        onPressed: () {

                        },
                      )
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 0.0,),
                TextFormField(
                  maxLength: 30,
                  decoration: InputDecoration(
                      labelText: 'informations_personnelles',
                      labelStyle: TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.black26,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      prefix: IconButton(
                        icon: Icon(Icons.info),
                        onPressed: () {

                        },
                      )
                  ),
                  obscureText: true,
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}