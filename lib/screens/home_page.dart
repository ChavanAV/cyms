import 'package:flutter/material.dart';

import 'main_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 2,
    child: SafeArea(
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          elevation: 10,
          width: 250,
          child: ListView(
              children: const [
                UserAccountsDrawerHeader(
                  accountName: Text("Akshay"),
                  accountEmail: Text("Way To Horizon"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7cMEr9HXbWjjGArjVcAbnfiUbbfIcSSM4EQ&usqp=CAU"),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                  ),
                  margin: EdgeInsets.zero,
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("My Profile"),
                ),
                ListTile(
                  leading: Icon(Icons.privacy_tip_outlined),
                  title: Text("Privacy"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Log Out"),
                ),
              ]
          ),
        ),
        appBar: AppBar(
          title: const Text("CYMS"),
          backgroundColor: Colors.teal,
          elevation: 0,
          toolbarHeight: 40,
          centerTitle: true,
          bottom: const TabBar(
            indicatorPadding: EdgeInsets.symmetric(horizontal: 50),
            splashBorderRadius: BorderRadius.all(Radius.circular(20)),
            splashFactory: InkSplash.splashFactory,
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                text: "Home",
              ),
              Tab(
                text: "Attach",
              ),
            ],
          ),
        ),
        body: TabBarView(
            children: [
              MainScreen(),
              Container(
                color: Colors.blue,
              ),
            ]
        ),
      ),
    ),
  );
}
