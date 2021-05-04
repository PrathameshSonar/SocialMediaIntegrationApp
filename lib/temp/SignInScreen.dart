import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:socialintegrationapp/custom_colors.dart';
import 'package:socialintegrationapp/temp/UserProfile.dart';
import 'auth.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.firebaseNavy,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: 20.0,
          ),
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            Row(),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'SOCIAL',
                    style: TextStyle(
                      color: CustomColors.firebaseYellow,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'MEDIA',
                    style: TextStyle(
                      color: CustomColors.firebaseAmber,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'INTEGRATION',
                    style: TextStyle(
                      color: CustomColors.firebaseOrange,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'APP',
                    style: TextStyle(
                      color: CustomColors.firebaseGrey,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ),
            googleLoginButton(),
          ]),
        ),
      ),
    );
  }

  Widget googleLoginButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: OutlinedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          )),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage("assets/google_logo.png"),
                height: 35.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Sign in with Google',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        onPressed: this.click,
      ),
    );
  }

  void click() {
    signInWithGoogle().then((user) => {
      this.user = user,
      Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfile(user)))
    });
    

  }


}

