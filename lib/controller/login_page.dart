import 'package:flutter/material.dart';
import 'package:football_fans_app/controller/email_password_signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1B202D),
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(0.0, 150.0, 0.0, 0.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Center(
                child: Text('Login',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 150.0,
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
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
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
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
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
                    if (value != null && value.isEmpty){
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: 300.0,
                height: 60.0,
                child: ElevatedButton(onPressed: (){
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
                    ) ,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Dont have an account?',
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
                        child: Text('Sign up',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EmailPasswordSignUpPage()),
                          );
                        }
                    )
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

