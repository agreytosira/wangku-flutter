import 'package:flutter/material.dart';
import 'package:wangku_app/systems/colors.dart';
import 'package:wangku_app/home.dart';
import 'package:wangku_app/register.dart';

class LoginScreen extends StatelessWidget {
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
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                    child: Text(
                      'Login Account',
                      style: TextStyle(
                        color: MyColors.text,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Column(children: [
                    const SizedBox(height: 8),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 8),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Username',
                            labelStyle: TextStyle(
                              fontSize: 16,
                            ),
                            hintText: 'Input Your Username',
                            hintStyle: TextStyle()),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 8),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontSize: 16,
                          ),
                          hintText: 'Input Your Password',
                          hintStyle: TextStyle(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ]),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.black, width: 1),
                        backgroundColor: Color.fromARGB(255, 255, 205, 41),
                        fixedSize: Size(double.infinity, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'LOGIN',
                                style: TextStyle(
                                  letterSpacing: 3,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.text,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have any account?",
                        style: TextStyle(
                          color: MyColors.text,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                        },
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                            color: MyColors.secondary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ))),
    );
  }
}
