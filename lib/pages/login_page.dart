import 'package:curso_flutterando_2021/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  String urlImage =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Logo_TV_2015.png/250px-Logo_TV_2015.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 130,
                  height: 130,
                  child: Image.network(urlImage),
                ),
                SizedBox(height: 60,),
                TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), label: Text("Email")),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), label: Text("Password")),
                ),
                const SizedBox(
                  height: 16,
                ),
                OutlinedButton(
                  child: const Text("Login"),
                  onPressed: () {
                    if (email == "antonio195br@gmail.com" &&
                        password == "sptech") {
                      Navigator.of(context).pushReplacementNamed("/home");
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
