import 'package:cyms/screens/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NavigatToHome();
  }

  NavigatToHome() async {
    await Future.delayed(Duration(seconds: 2),
          () {},
    );
    Navigator.pushReplacement(
        context, MaterialPageRoute(
      builder: (context)=>HomePage(),
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.teal,
    );
  }
}
