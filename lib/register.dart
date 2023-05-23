import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wangku_app/_colors.dart';
import 'package:wangku_app/home.dart';
import 'package:wangku_app/login.dart';

class RegisterScreen extends StatelessWidget {
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
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'Daftar Akun',
                          style: GoogleFonts.inter(
                            color: textColor,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 16, top: 4),
                        child: Text(
                          'Silahkan isi data untuk pendaftaran akun',
                          style: GoogleFonts.inter(
                            color: textColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
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
                            labelText: 'Nama Lengkap',
                            labelStyle: GoogleFonts.inter(
                              fontSize: 16,
                            ),
                            hintText: 'Masukkan Nama Lengkap Anda',
                            hintStyle: GoogleFonts.inter()),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 8),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Username',
                            labelStyle: GoogleFonts.inter(
                              fontSize: 16,
                            ),
                            hintText: 'Masukkan Username Anda',
                            hintStyle: GoogleFonts.inter()),
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
                          labelStyle: GoogleFonts.inter(
                            fontSize: 16,
                          ),
                          hintText: 'Masukkan Password Anda',
                          hintStyle: GoogleFonts.inter(),
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
                                'DAFTAR',
                                style: GoogleFonts.inter(
                                  letterSpacing: 3,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 38, 50, 56),
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
                        'Sudah punya akun? ',
                        style: GoogleFonts.inter(
                          color: textColor,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Text(
                          'Login Sekarang',
                          style: GoogleFonts.inter(
                            color: secondaryColor,
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
