import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nee/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sahil();
  }
}

class Sahil extends StatefulWidget {
  const Sahil({Key? key}) : super(key: key);

  @override
  State<Sahil> createState() => _SahilState();
}

class _SahilState extends State<Sahil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sign up screen',
            style: TextStyle(color: Colors.white, fontSize: 24.00),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsetsDirectional.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.email_outlined),
                      hintText: 'Email Address',
                      labelText: 'Email'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.password_outlined),
                      hintText: 'New Password',
                      labelText: 'New Password',
                      labelStyle: TextStyle(color: Colors.black)),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.password_outlined),
                      hintText: 'Confirm New Password',
                      labelText: 'Confirm New Password',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: null, child: Text('Sign up'), style: ButtonStyle()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
