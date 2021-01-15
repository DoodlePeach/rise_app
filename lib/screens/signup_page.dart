import 'dart:ui';
import 'package:rise_app/screens/public_profile_page.dart';
import 'package:rise_app/widget/cus_text_field.dart';
import 'package:rise_app/widget/social_media_button.dart';
import '../widget/cus_gradient.dart';
import 'package:flutter/material.dart';

class SignPage extends StatefulWidget {
  static Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  @override
  _SignPageState createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  final GlobalKey<ScaffoldState> _myKey = GlobalKey<ScaffoldState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController country = TextEditingController();
  final TextEditingController age = TextEditingController();
  final TextEditingController gender = TextEditingController();
  final TextEditingController city = TextEditingController();

  Widget signupButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 55,
      width: double.infinity,
      child: RaisedButton(
        shape: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15)),
        textColor: Colors.white,
        padding: EdgeInsets.all(0.0),
        child: Container(
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: gradient,
          ),
          child: Center(
            child: Text(
              'Signup',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PublicProfilePage(),
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
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'with the Riase App',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CusTextField(
                      showIcon: true,
                      hintText: 'please Enter Name',
                      labelText: 'Name',
                      obscureText: false,
                      controller: name,
                      suffixIcon: Icons.person,
                    ),
                    CusTextField(
                      showIcon: true,
                      hintText: 'please Enter Email Adress',
                      controller: email,
                      labelText: 'Email',
                      obscureText: false,
                      suffixIcon: Icons.email,
                    ),
                    CusTextField(
                      showIcon: true,
                      hintText: 'please Enter Password',
                      controller: password,
                      labelText: 'Password',
                      suffixIcon: Icons.lock,
                      obscureText: true,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CusTextField(
                            showIcon: true,
                            hintText: 'select Option',
                            obscureText: false,
                            labelText: 'Country',
                            suffixIcon: Icons.arrow_downward_rounded,
                            controller: country,
                          ),
                        ),
                        Expanded(
                          child: CusTextField(
                              showIcon: true,
                              hintText: 'select Option',
                              controller: city,
                              obscureText: false,
                              labelText: 'City',
                              suffixIcon: Icons.arrow_downward_rounded),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CusTextField(
                            showIcon: false,
                            hintText: 'please Enter Age',
                            obscureText: false,
                            labelText: 'Age',
                            controller: age,
                            suffixIcon: Icons.person,
                          ),
                        ),
                        Expanded(
                          child: CusTextField(
                            showIcon: true,
                            hintText: 'Select Option',
                            obscureText: false,
                            labelText: 'Gender',
                            controller: gender,
                            suffixIcon: Icons.arrow_downward_rounded,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    signupButton(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Or',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SocialMediaButton(
                          mediaUrlScale: 20,
                          mediaName: 'Google',
                          mediaUrl:
                              'https://assets.stickpng.com/images/5847f9cbcef1014c0b5e48c8.png',
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
