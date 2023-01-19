

import 'package:flutter/material.dart';



class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Registerpage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: SafeArea(
          child: Form(
        key: _formkey,
        child: ListView(
          children: [
            Text("Email"),
            TextFormField(
              
              controller: _emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "กรุณากรอกอีเมล์";
                }
                return null;
              },
            ),
            Text("Password"),
            TextFormField(
              controller: _passwordController,

               validator: (value) {
                if (value!.isEmpty) {
                  return "กรุณากรอก Password";
                }
                return null;
              },
            ),
           
        
            ElevatedButton(onPressed: () { 
                  if (_formkey.currentState!.validate()) {
                    print("ok");
                  }
                }, child: Text("Register")),
          ],
        ),
      )),
    );
  }
}
