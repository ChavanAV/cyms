import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeafyPlants extends StatefulWidget {
  const LeafyPlants({Key? key}) : super(key: key);

  @override
  State<LeafyPlants> createState() => _LeafyPlantsState();
}

class _LeafyPlantsState extends State<LeafyPlants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leafy Plants"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
    );
  }
}
