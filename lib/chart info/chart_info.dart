import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartInfo extends StatefulWidget {
  const ChartInfo({Key? key}) : super(key: key);

  @override
  State<ChartInfo> createState() => _ChartInfoState();
}

class _ChartInfoState extends State<ChartInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CYMS"),
        backgroundColor: Colors.teal.withOpacity(.8),
        elevation: 0,
        toolbarHeight: 40,
        centerTitle: true,
      ),
      body: Container(
        color:  Colors.blue,
      ),
    );
  }
}
