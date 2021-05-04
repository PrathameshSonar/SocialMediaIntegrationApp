import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:socialintegrationapp/custom_colors.dart';

class UserProfile extends StatelessWidget {

  User user;
  UserProfile(@required user);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(user.photoURL),
              radius: 90.0,
            ),
            SizedBox(height: 30.0,),
            Text(
              'Hello',
              style: TextStyle(
                color: CustomColors.firebaseGrey,
                fontSize: 26,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              user.displayName,
              style: TextStyle(
                color: CustomColors.firebaseGrey,
                fontSize: 26,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              user.email,
              style: TextStyle(
                color: CustomColors.firebaseGrey,
                fontSize: 20,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                color: Colors.blueGrey,
                padding: EdgeInsets.all(15),
                child: Text(
                  "Log Out",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                // onPressed: () {
                //   Navigator.of(context).pushReplacement(
                //       MaterialPageRoute(builder: (context) => SignInPage()));
                //   if (AuthBlocGoogle().currentUser != null) {
                //     AuthBlocGoogle().logout();
                //   }
                // }
              )
          ],
        ),
      ),
    );
  }
}
