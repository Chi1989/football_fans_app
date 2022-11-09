import 'package:flutter/material.dart';

class PhonePage extends StatefulWidget {
  static var routeName;

  const PhonePage({Key? key}) : super(key: key);

  @override
  State<PhonePage> createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Phone',
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
            controller: phone,
            keyboardType: TextInputType.phone,
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0XFF7A8194),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              labelText: 'phone',
              hintText: 'Enter your phone number',
              labelStyle: TextStyle(
                color: Colors.blueAccent[900],
              ),
              prefixIcon: Icon(Icons.lock,
                color: Colors.blueAccent[900],
              ),
            ),
            validator: (String? value) {
              if (value != null && value.isEmpty){
                return 'Please enter your phone number';
              }
              return null;
            },
          ),
        ),
        ],
      ),
    );
  }
}
