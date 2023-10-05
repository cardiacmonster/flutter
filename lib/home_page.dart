import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                 const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    
                  ),
                  child: ListTile(
                    leading:Icon(Icons.account_circle_outlined,size: 50,),
                    title: Text("Rajveer Singh"),
                  )
                ),
                ListTile(
                  leading:const  Icon(
                    Icons.home,
                  ),
                  title: const Text('Page 1'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.train,
                  ),
                  title: const Text('Page 2'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),

              ],
            ),

          ),
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/login.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 50,
                ),
                const Text(
                  "Ambika Transpoart",
                  style:
                      TextStyle(fontFamily: 'Young Serif', color: Colors.black),
                ),
              ],
            ),
          ),
          body: Container()),
    );
  }
}
