import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rise_app/widget/cus_text_field.dart';
import 'package:rise_app/widget/social_media_button.dart';

import '../widget/cus_gradient.dart';
import 'package:flutter/material.dart';
import './signup_page.dart';
import 'bottom_navigation_bar.dart';

class LoginPage extends StatefulWidget {
  static Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = FirebaseAuth.instance;
  UserCredential authResult;
  bool isLoading = false;

  RegExp regex = new RegExp(LoginPage.pattern);

  final GlobalKey<ScaffoldState> _myKey = GlobalKey<ScaffoldState>();

  final TextEditingController email = TextEditingController();

  final TextEditingController password = TextEditingController();

  Widget loginButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      width: double.infinity,
      child: RaisedButton(
        shape: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15)),
        textColor: Colors.white,
        padding: EdgeInsets.all(0.0),
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: gradient,
          ),
          child: Center(
            child: Text(
              'Login',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CusBottonNavigationBar(),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _myKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/riseapp.png',
                      scale: 2,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Welcome!',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Please Enter Detail to continue',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'with the Rise App',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        CusTextField(
                          showIcon: true,
                          hintText: 'Enter your email',
                          labelText: 'Email',
                          suffixIcon: Icons.email,
                          obscureText: false,
                          controller: email,
                        ),
                        CusTextField(
                            showIcon: true,
                            hintText: 'Enter your Password',
                            controller: password,
                            labelText: 'Password',
                            suffixIcon: Icons.lock,
                            obscureText: true),
                        SizedBox(
                          height: 5,
                        ),
                        loginButton(),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Or',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                decoration: TextDecoration.underline),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SocialMediaButton(
                                mediaName: 'Google',
                                mediaUrl:
                                    'https://assets.stickpng.com/images/5847f9cbcef1014c0b5e48c8.png',
                                mediaUrlScale: 20,
                              ),
                              SocialMediaButton(
                                mediaName: 'Facebook',
                                mediaUrl:
                                    'https://assets.stickpng.com/thumbs/58e91965eb97430e819064f5.png',
                                mediaUrlScale: 13,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
