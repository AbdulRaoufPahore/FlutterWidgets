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
        iconTheme: const IconThemeData(color: Colors.white, size: 30),
        backgroundColor: Colors.blue,
        title: const Text(
          "Code With 4546",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: const [
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
        child: Container(
          width: 500,
          height: 120,
          transform: Matrix4.rotationZ(0.1),
          margin: EdgeInsets.all(30),
          alignment: Alignment.center,
          // color: Colors.blue,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.amber,
                  offset: Offset(5, 5),
                )
              ],
              color: Colors.blue,
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            "Pressed the button $count times",
            style: const TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
      drawer: const Drawer(
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
    // return Scaffold();
  }
}
