import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/main.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("LOGGED"),),
          body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyApp()));

            },
            child: const Text("Go to home"),
          )
    ),
    );

  }
}
