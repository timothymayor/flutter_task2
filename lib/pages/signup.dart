import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './login.dart';

void main() =>
    runApp(SignUp());

///class for the container holding the email and password TextFields
class SignUp extends StatelessWidget {
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
                      height: 530.0,
                      child: SingleChildScrollView(
                        child: Column (
                          children: <Widget>[
                            DetailsField(),
                            SignUpButton(),
                            LoginButton()
                          ],
                        ),
                      )
                  )
              )
            ],
          ),
        )
    )
    );
  }
}

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

///class for the password TextField
class DetailsField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container (
      margin: EdgeInsets.only(top: 3.0, bottom: 10.0),
          child: Column (
          children: <Widget>[
            TextField (
            autofocus: false,
            cursorWidth: 2.0,
            cursorColor: Colors.green,
            style: TextStyle (
              height: 2.0),
            /// the field's border and placeholder
            decoration: InputDecoration(
                labelText: 'First Name',
                labelStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black26
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black26),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)
                ),
            )
          ), TextField (
              autofocus: false,
              cursorWidth: 3.0,
              cursorColor: Colors.green,
              style: TextStyle (
                  height: 2.0),
              /// the field's border and placeholder
              decoration: InputDecoration(
                  labelText: 'Last Name',
                  labelStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black26
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                  ),
              )
          ),
              TextField(
                autofocus: false,
                cursorWidth: 3.0,
                cursorColor: Colors.green,
                style: TextStyle (
                    height: 2.0),
                /// the field's border and placeholder
                decoration: InputDecoration(
                    labelText: 'Email Address',
                    labelStyle: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black26
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)
                    ),
                ),
              ),
             TextField(
                autofocus: false,
                obscureText: true,
                cursorWidth: 3.0,
                cursorColor: Colors.green,
                style: TextStyle (
                    height: 2.0),
                ///style for border and placeholder
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black26
                  ),
                  enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black26),
                  ),
                  focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)
                  ),
                ),
              ),
            TextField(
              autofocus: false,
              obscureText: true,
              cursorWidth: 3.0,
              cursorColor: Colors.green,
              style: TextStyle (
                  height: 2.0),
              ///style for border and placeholder
              decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black26
                    ),
                  enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black26),
                  ),
                  focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)
                  ),
              ),
            ),
            ],
              ),
          );
  }
}

///class for Button text
class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container (
      margin: EdgeInsets.only(top: 25.0),
        child: RaisedButton (
          color: Colors.green,
          child: Text('Sign Up',
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
        content: Text('Still Curious, I see!')
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
class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container (
      margin: EdgeInsets.only(top: 25.0, left: 11.0),
      child: Column (
        children: <Widget>[
          Text (
              "Already Have An Account?",
              textDirection: TextDirection.ltr,
              style: TextStyle (
                  fontSize: 18.0,
                  color: Colors.black12,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w200
              ),
            ),
          FlatButton (
            child: Text('Login',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 20.0,
                color: Colors.black12,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.only(left: 40.0, right: 40.0),
            onPressed: () {
              Navigator.push (
                  context,
                  MaterialPageRoute(
                      builder: (context) => Login()
                  )
              );
            },
          )
        ],
      ),
    );
  }
}