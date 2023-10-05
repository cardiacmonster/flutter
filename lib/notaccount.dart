import 'package:flutter/material.dart';
import 'package:loginpage/main.dart';


class NotAccount extends StatefulWidget {
  const NotAccount({super.key});

  @override
  State<NotAccount> createState() => _NotAccountState();
}

class _NotAccountState extends State<NotAccount> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.orange,
          child: Stack(alignment:Alignment.  topCenter ,

            children: [
              const Text("Ambika Transports",
                style: TextStyle(fontSize: 55, fontFamily: 'Young Serif'),),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    border: Border.all(
                      width: 10,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  height: 600,
                  width: 400,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      const Text(
                        'SignUp',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 50),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(
                        width: 280,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText:'username',
                            filled: true,
                            fillColor: Colors.white70,
                            hintText: 'username',
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(15))),),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(width: 280,
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Name',
                            labelText: 'Name',
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(15))),),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(width: 280,
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Email',
                            filled: true,
                            fillColor: Colors.white54,
                            labelText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(15))),),

                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(width: 280,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              hintText: 'Password',
                          labelText: 'Password'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(width: 280,
                        child: TextField(
                          decoration:
                              InputDecoration(hintText: 'Confirm Password',
                                labelText: 'Confirm Password',
                                filled: true,
                                fillColor: Colors.white54,
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(15))),),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(onPressed: () {}, child: const Text("SignUp")),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                          onTap: () {  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const LoginPage()));},
                          child: const Text(
                            "I have alerady Account",
                            style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline),
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
