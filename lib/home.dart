import 'package:flutter/material.dart';
import 'package:wangku_app/systems/colors.dart';
// import 'package:wangku_app/systems/colors.dart';

class HomeScreen extends StatelessWidget {
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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: MyColors.primary,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      'Last Month',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: MyColors.primary,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      'This Month',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: MyColors.primary,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      'Future',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
                ),
              ),
            ],
          )
        ]),
      ),
    ));
  }
}
