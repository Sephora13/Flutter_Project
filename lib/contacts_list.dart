import 'package:flutter/material.dart';
import 'package:untitled1/contacts.dart';


class ContactList extends StatefulWidget {
  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State <ContactList>{

  List<Contact> contacts=[
    Contact(nom:'Alan Walker', imageProfil:'', number:'59300045'),
    Contact(nom:'Katy Perry', imageProfil:'', number:'59300045'),
    Contact(nom:'Bilie Eilish', imageProfil:'',number:'59300045'),
    Contact(nom:'Sia', imageProfil:'',number:'59300045'),
    Contact(nom:'Adele', imageProfil:'',number:'59300045'),
    Contact(nom:'Ava Max', imageProfil:'',number:'59300045'),
    Contact(nom:'Omah lay', imageProfil:'',number:'59300045'),
    Contact(nom:'Alex', imageProfil:'',number:'59300045'),
    Contact(nom:'Joeboy', imageProfil:'',number:'59300045'),
    Contact(nom:'Doja cat', imageProfil:'',number:'59300045'),
    Contact(nom:'Conex', imageProfil:'',number:'59300045'),
    Contact(nom:'Justin Bieber', imageProfil:'',number:'59300045'),
    Contact(nom:'Ariana Grande', imageProfil:'',number:'59300045'),
    Contact(nom:'Emma Peters', imageProfil:'',number:'59300045'),
    Contact(nom:'Jay-Z', imageProfil:'',number:'59300045'),
    Contact(nom:'Beyonce', imageProfil:'',number:'59300045'),
    Contact(nom:'Shakira', imageProfil:'',number:'59300045'),

  ];

    Color _color=Colors.black26;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(
          'Téléphone',
        ),
        actions:<Widget>[
          SizedBox(width: 20,),
          Icon(
              Icons.search,
          ),
          SizedBox(width: 20,),
          Icon(
              Icons.more_vert,
          ),
          SizedBox(width: 20),
          Icon(
              Icons.add)
        ],
      ),
      body:ListView.builder(
          itemCount:contacts.length,
          itemBuilder:(context, index)  {

          var nameInitial= contacts[index].nom[0];
          if (contacts[index].imageProfil.length>0){
            nameInitial='';
          }
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 4.0),
              child: Card(
                child:ListTile(
                  onTap: () {
                  },
                  title: Text(contacts[index].nom,
                    style: Theme.of(context).textTheme.headlineSmall),
                  leading: CircleAvatar(
                    backgroundColor: _color,
                    backgroundImage: AssetImage('assets/${contacts[index].imageProfil }'),
                    child: Text(
                      nameInitial,
                      style: TextStyle(fontSize: 20.0,),
                    ),
                  ),
                )
              ),
          );
          }
      ),

    );
  }
}
