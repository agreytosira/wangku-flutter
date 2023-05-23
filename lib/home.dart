import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            toolbarHeight: 100,
            bottomOpacity: 0.0,
            elevation: 0.0,
            backgroundColor: Colors.grey[50],
            centerTitle: true,
            title: Image.asset(
              'assets/images/logo-wangku.png',
              fit: BoxFit.contain,
              height: 35,
            )),
        body: const Center(
          child: Text("Homepage",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}
