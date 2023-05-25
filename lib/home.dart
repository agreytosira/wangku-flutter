import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wangku_app/_colors.dart';

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
          margin: EdgeInsets.all(16),
          child: Container(
            height: 150,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 48),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home),
                            Text('Hello',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ))),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 48),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home),
                            Text('Hello',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ))),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 48),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home),
                            Text('Hello',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ))),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: primaryColor,
          child: IconButton(
            color: textColor,
            icon: Icon(Icons.home),
            onPressed: () {
              print('Button ditekan!');
            },
          ),
        ),
      ),
    );
  }
}
