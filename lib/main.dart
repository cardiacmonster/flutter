import 'package:flutter/material.dart';
import 'package:loginpage/home_page.dart';
import 'package:loginpage/notaccount.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var username = TextEditingController();
  var password = TextEditingController();
  var use1 = "rajgmail.com";
  var pass1 = 9451;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        child: Stack(children: [
          Container(
            height: 500,
            decoration: const BoxDecoration(
                color: Colors.cyan,
                border:
                    Border(bottom: BorderSide(width: 5, color: Colors.black))),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Ambika Transports",
                  style: TextStyle(fontSize: 55, fontFamily: 'Young Serif'),
                ),
                Container(
                  height: 600,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(width: 5),
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.all(15)),
                      const Text(
                        "Login ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 50),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Image.asset(
                        'assets/images/login.png',
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                       SizedBox(
                        width: 250,
                        child: TextField(
                          controller: username,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Username',
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              filled: true,
                              fillColor: Colors.white54,
                              labelText: "Username"),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 250,
                        child: TextField(
                          controller: password,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              filled: true,
                              fillColor: Colors.white54,
                              labelText: "Password"),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(





                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlueAccent,
                          ),
                          onPressed: () { Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const HomePage())); },
                          child: const Text(
                            "   Login   ",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          )),
                      SizedBox(
                        width: 300,
                        height: 100,
                        child: Align(
                            alignment: const Alignment(0, 1),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const NotAccount()));
                              },
                              child: const Text(
                                "I don't have account",
                                style: TextStyle(
                                    color: Colors.black,
                                    decoration: TextDecoration.underline),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
