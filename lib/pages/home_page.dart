import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        backgroundColor: Colors.blue,
        title: Text(
          "Code With 4546",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.account_circle,
              size: 30,
            ),
          )
        ],
      ),
      body: Center(
        child: Text(
          "Pressed the button $count times",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Text(
                    "4546",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text("Code With 4546"),
                accountEmail: Text("@codewith4546.gmail.com")),
            ListTile(
              title: Text(
                "Inbox",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.mail,
                size: 30,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "Primary",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.inbox,
                size: 30,
                color: Colors.white,
              ),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text(
                "Social",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.people,
                size: 30,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "Setting",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.settings,
                size: 30,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "Privacy",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.privacy_tip,
                size: 30,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "LogOut",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.power_settings_new_sharp,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
