import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab06/loginpage.dart';
import 'package:lab06/register.dart';
import 'package:lab06/services/auth_service.dart';

class successful extends StatefulWidget {
  const successful({super.key});

  @override
  State<successful> createState() => _successState();
}

class _successState extends State<successful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page Verify"),actions: [

IconButton(onPressed: (){
FirebaseAuth.instance.signOut();
Navigator.pushReplacement(
context,
MaterialPageRoute(
builder: (context) => Loginpage(),
),
);


},
 icon: const Icon(Icons.logout)),
        ],  

      ),
      body: SafeArea(child: Form(child: ListView(children: [

        Text("Login successful"),
        Icon( Icons.check_outlined,  color: Colors.green),


      ],
      


      )),)
    
    );
  }
}