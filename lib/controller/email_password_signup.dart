
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:football_fans_app/controller/authentication_service.dart';

class EmailPasswordSignUpPage extends StatefulWidget {
  static var routeName;


  const EmailPasswordSignUpPage({Key? key}) : super(key: key);

  @override

  State<EmailPasswordSignUpPage> createState() => _EmailPasswordSignUpPageState();
}

class _EmailPasswordSignUpPageState extends State<EmailPasswordSignUpPage> {

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  //final _formKey = GlobalKey<FormState>();
@override
void dispose() {
  super.dispose();
  email.dispose();
  password.dispose();
}

  void signUpUser() async {
    AuthenticationService(FirebaseAuth.instance).signUpWithEmail(email: email.text, password: password.text, context: context);
  }

  @override
  Widget build(BuildContext context) {
    //var chosenValue;
    var chosenValue;
    return Scaffold(
      backgroundColor: Color(0XFF1B202D),
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(0.0, 150.0, 0.0, 0.0),
        child: Form(
          //key: _formKey,
          child: Column(
            children: [
              Center(
                child: Text('Signup',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text('Email Address',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  showCursor: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0XFF7A8194),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    labelText: 'email',
                    hintText: 'Enter your email',
                    labelStyle: TextStyle(
                      color: Colors.blueAccent[900],
                    ),
                    prefixIcon: Icon(Icons.email_outlined,
                      color: Colors.blueAccent[900],
                    ),
                  ),
                  validator: (String? value) {
                    if (value != null && value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text('Password',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  controller: password,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0XFF7A8194),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    labelText: 'password',
                    hintText: 'Enter your password',
                    labelStyle: TextStyle(
                      color: Colors.blueAccent[900],
                    ),
                    prefixIcon: Icon(Icons.lock,
                      color: Colors.blueAccent[900],
                    ),
                  ),
                  validator: (String? value) {
                    if (value != null && value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              DropdownButton<String>(
                focusColor: Colors.grey,
                value: chosenValue,
                //elevation: 5,
                style: TextStyle(color: Color(0XFF1B202D)),
                iconEnabledColor: Colors.black,
                items: <String>[
                  'Football',
                  'Basketball',
                  'IceHockey',
                  'Motorsports',
                  'Bandy',
                  'Rugby',
                  'Skiing',
                  'Shooting',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(color: Colors
                        .blueAccent),),
                  );
                }).toList(),
                hint: Text(
                  "Interest",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                onChanged: (String? value) {
                  setState(() {
                    chosenValue = value;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300.0,
                height: 60.0,
                child: ElevatedButton(onPressed: () {
                  signUpUser();
    // final result = await context
    //     .read<AuthenticationService>()
    //     .signUp(
    // email: email.text.trim(),
    // password: password.text.trim(),
    // );
    // ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text(result!)));
    // if (result == "Signed up") {
    // Navigator.popUntil(
    // context, ModalRoute.withName('/auth'));
    // }

    },
                  child: Text('Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text('Have an account?',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 5.0,
                  // ),
                  TextButton(
                      child: Text('Login in',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


}


