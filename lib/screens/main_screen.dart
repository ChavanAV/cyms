import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../methods/grid_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(.15),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                )
            ),
            padding: EdgeInsets.all(10),
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 3/3.5
            ),
              itemCount: 6,
              itemBuilder: (context, index) => GridItems(items[index]),
            ),
          ),
        ],
      ),
    );
  }
}
