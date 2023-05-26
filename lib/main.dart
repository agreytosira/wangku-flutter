import 'package:flutter/material.dart';
import 'package:wangku_app/systems/colors.dart';
import 'package:wangku_app/login.dart';

void main() {
  runApp(MaterialApp(
    title: 'Tes pindah page',
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
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
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            children: [
              Image.asset(
                'assets/images/illustration.png',
                height: 300,
                width: 300,
              ),
              Text(
                'Control Your Financial Easier',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: MyColors.text,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                child: Text(
                    'Manage your finances by recording every transaction you make. you can monitor how much your expenses and income each month.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: MyColors.text,
                      fontSize: 16,
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 48, horizontal: 0),
              ),
              Center(
                child: Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black, width: 1),
                      backgroundColor: MyColors.primary,
                      fixedSize: Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'GET STARTED',
                              style: TextStyle(
                                letterSpacing: 3,
                                fontWeight: FontWeight.bold,
                                color: MyColors.text,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: MyColors.text,
                            )
                          ]),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
