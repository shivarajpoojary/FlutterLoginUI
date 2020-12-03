import 'package:flutter/material.dart';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginUI extends StatefulWidget {
  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  TextEditingController email = TextEditingController();
  TextEditingController a = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Stack(
        children: <Widget>[
          Container(
            //     margin: EdgeInsets.only(top:h/15),
            height: h / 1.2,
            width: w,
            child: RotatedBox(
              quarterTurns: 0,
              child: FlareActor(
                'assets/images/curve.flr',
                animation: 'Flow',
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fill,
                // isPaused: x,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: MediaQuery.of(context).size.width * 0.3,
            child: SvgPicture.asset(
              'assets/images/user.svg',
              height: 250.0,
              width: 250.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: w / 5, left: w / 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Yay!! ",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 32,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  "Your back",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 32,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: h / 2.3, left: 10, right: 10),
              alignment: Alignment.center,
              child: ListView(
                children: <Widget>[
                  box(email, "Email", TextInputType.text, Icons.mail),
                  box(a, "Password", TextInputType.visiblePassword,
                      Icons.security),
                  Container(
                    margin: EdgeInsets.only(top: h / 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        _showPrimaryButton(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(fontSize: 16),
                      )),
                  Container(
                    height: 70,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      color: Colors.white,
                      elevation: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Don't have any account?",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SignUp();
                                  },
                                ),
                              );
                            },
                            child: Text('Register',
                                style: TextStyle(
                                    color: Color(0xFF8C4DEB),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

Widget _showSecondaryButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      new Container(
        width: 160,
        height: 60,
        margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
        child: new RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: 3.0),
            color: Colors.white,
            onPressed: () {},
            child: new Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Image.asset(
                  'assets/images/apple.png',
                  height: 30.0,
                ),
                SizedBox(
                  width: 10,
                ),
                new Container(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: new Text(
                      "Apple",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    )),
              ],
            )),
      ),
      new Container(
        width: 160,
        height: 60,
        margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
        child: new RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: 3.0),
            color: Colors.white,
            onPressed: () {},
            child: new Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Image.asset(
                  'assets/images/google.png',
                  height: 30.0,
                ),
                SizedBox(
                  width: 10,
                ),
                new Container(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: new Text(
                      "Google",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    )),
              ],
            )),
      ),
    ],
  );
}

Widget _showDivider() {
  return new Container(
    margin: EdgeInsets.symmetric(vertical: 1),
    child: Row(
      children: <Widget>[
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: Divider(thickness: 1, color: Colors.black),
          ),
        ),
        Text(
          'or',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: Divider(thickness: 1, color: Colors.black),
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    ),
  );
}

Widget _showPrimaryButton() {
  return Container(
    height: 60.0,
    child: GestureDetector(
      onTap: () {},
      child: Container(
        width: 250,
        child: RaisedButton.icon(
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: Color(0xFF8C4DEB),
          onPressed: () {},
          icon: Icon(Icons.arrow_forward),
          label: Text(
            "Sign In",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    ),
  );
}

Widget box(
    TextEditingController x, String label, TextInputType t, IconData next) {
  return Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(2),
    child: Form(
      //   key: formkey,
      child: TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: new InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            // borderSide: BorderSide.,

            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          hintStyle: TextStyle(fontSize: 16.0, color: Colors.black),
          hintText: label,
          prefixIcon: Icon(
            next,
            color: Color(0xff735EBF),
          ),
        ),
        validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
        onSaved: (value) => print(value),
      ),
    ),
  );
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffac5fe3),
      body: Center(
        child: Text("Main Screen"),
      ),
    );
  }
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phoneumber = TextEditingController();
  TextEditingController dob = TextEditingController();
  DateTime dates;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    final key = new GlobalKey<ScaffoldState>();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: h / 1.1,
            child: FlareActor(
              'assets/images/curve.flr',
              animation: 'Flow',
              alignment: Alignment.bottomCenter,
              fit: BoxFit.cover,
              // isPaused: x,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: w / 6, left: w / 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Create ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Account ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: h / 6),
            padding: EdgeInsets.all(10),
           
            child: ListView(
                 
              children: <Widget>[
                box(name, "Name", TextInputType.text, Icons.person),
                box(email, "Email", TextInputType.emailAddress, Icons.mail),
                box(password, "Password", TextInputType.visiblePassword,
                    Icons.security),
                box(phoneumber, "Phone Number", TextInputType.phone,
                    Icons.phone),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 60.0,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: RaisedButton.icon(
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      color: Color(0xFF735EBF),
                      onPressed: () {},
                      label: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                      icon: Icon(Icons.arrow_forward),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                _showDivider(),
                SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                _showSecondaryButton(),
                SizedBox(height: MediaQuery.of(context).size.width * 0.03),
                Container(
                  width: 350,
                  height: 70,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Colors.white,
                    elevation: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Already have an account?',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginUI();
                                },
                              ),
                            );
                          },
                          child: Text('Sign In',
                              style: TextStyle(
                                  color: Color(0xFF735EBF),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
