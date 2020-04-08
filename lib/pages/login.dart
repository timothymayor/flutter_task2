import 'dart:ui';

import 'package:com/pages/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './signup.dart';

///class for the container holding the email and password TextFields
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
      body: Container(
      alignment: Alignment.center,
      color: Colors.black12,
      child: Column (
        children: <Widget>[
          IconWidget(),
          Align (
              alignment: Alignment.center,
              child: Container(
                  width: 370.0,
                  height: 420.0,
                  child: SingleChildScrollView(
                    child: Column (
                      children: <Widget>[
                        EmailField(),
                        PasswordField(),
                        LoginButton(),
                        SignUpButton()
                      ],
                    ),
                  )
              )
          )
        ],
      ),
    ),
    ),
    );
  }
}

/// remember to transfer the email, icon and password classes into different files
///class for the page icon
class IconWidget extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    AssetImage appIcon = AssetImage('images/Teamwork Icon.png');
    Image image = Image(
        image: appIcon,
        ///the lines below changes the icon's color, width and height
        color: Colors.green[700],
        width: 180.0
    );
    return Container (
      //the icon's container
      margin: EdgeInsets.only(top: 90.0),
      child: image,
    );
  }
}

///class for the email TextField
class EmailField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container (
      margin: EdgeInsets.only(top: 22.0),
      child: TextField(
        autofocus: false,
        cursorWidth: 3.0,
        cursorColor: Colors.green,
        style: TextStyle (
          height: 1.6),
        /// the field's border and placeholder
        decoration: InputDecoration(
          labelText: 'Email Address',
          labelStyle: TextStyle(
            color: Colors.black26,
            fontSize: 20.0

          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
        ),
      )
      );
  }
}

///class for the password TextField
class PasswordField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container (
      margin: EdgeInsets.only(top: 22.0, bottom: 30.0),
      child: TextField(
        autofocus: false,
        obscureText: true,
        cursorWidth: 3.0,
        cursorColor: Colors.green,
        style: TextStyle (
            height: 1.6),
        ///style for border and placeholder
        decoration: InputDecoration(
          labelText: 'Password',
          labelStyle: TextStyle(
            fontSize: 20.0,
              color: Colors.black26
          ),
        enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black26),
        ),
        focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
        ),
        ),


      ),
    );
  }
}

///class for Button text
class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container (
      margin: EdgeInsets.only(top: 40.0),
      child: RaisedButton (
        color: Colors.green,
        child: Text('Log In',
          style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0)
        ),
        elevation: 4.0,
        padding: EdgeInsets.only(left: 100.0, right: 100.0, top: 15.0, bottom: 15.0),
        onPressed: () {
          popUp(context);
        },

      )
    );
  }

  void popUp (BuildContext context) {
    var alertDialog = AlertDialog (
      content: Text('Curious Much?')
    );

    showDialog(
        context: context,
        builder: (BuildContext context){
          return alertDialog;
  }
    );
}
}

///class for SignUp button
class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container (
      margin: EdgeInsets.only(top: 40.0, left: 13.0),
      child: Column (
        children: <Widget>[
          Text (
            "Don't Have An Account?",
            style: TextStyle (
              fontSize: 18.0,
              color: Colors.black12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w200
            ),
          ),
          FlatButton (
            child: Text('Sign Up',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 20.0,
              color: Colors.black12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
        ),
          ),
            ///shape: RoundedRectangleBorder(
                ///borderRadius: BorderRadius.circular(30.0)
            ///),
            padding: EdgeInsets.only(left: 40.0, right: 40.0),
            onPressed: () {
              Navigator.push (
                context,
                  MaterialPageRoute(
                      builder: (context) => SignUp()
                  )
              );
            },
          )
        ],
      ),
    );
  }
}
