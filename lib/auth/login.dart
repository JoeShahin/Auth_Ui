// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("images/logo.png"),
          ),
          Form(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "Username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(children: [
                    Text("If you dont have account "),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("signup");
                      },
                      child: Text(
                        "Click Here",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    )
                  ]),
                ),
                ElevatedButton(onPressed: () {}, child: Text("LogIn"))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
