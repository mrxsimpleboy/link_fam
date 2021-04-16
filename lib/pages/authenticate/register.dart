import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_carousel/services/auth.dart';
import 'package:practice_carousel/shared/constants.dart';
import 'package:practice_carousel/shared/loading_page.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;
  String email = '';
  String password = '';
  String checkPassword = '';
  @override
  Widget build(BuildContext context) {
    return loading
        ? LoadingPage(prompt: "Registering your account")
        : Scaffold(
            backgroundColor: Colors.lightBlueAccent[100],
            appBar: AppBar(
              backgroundColor: Colors.lightBlue[500],
              elevation: 0.0,
              title: Text('Sign in to Chatbot'),
              actions: <Widget>[
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white24),
                  ),
                  child: Row(children: [
                    Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ]),
                  onPressed: () {
                    widget.toggleView();
                  },
                )
              ],
            ),
            body: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: Center(
                  child: Column(
                children: [
                  Text("Register with email and password"),
                  SizedBox(height: 20.0),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration:
                              textInputDecoration.copyWith(hintText: 'email'),
                          validator: (val) => EmailValidator.validate(val)
                              ? null
                              : 'Please give a valid email',
                          onChanged: (val) {
                            setState(() => email = val);
                          },
                        ),
                        SizedBox(height: 20.0),
                        TextFormField(
                          obscureText: true,
                          decoration: textInputDecoration.copyWith(
                              hintText: 'password'),
                          validator: (val) => val.length < 6
                              ? 'Password length at least 6 characters'
                              : null,
                          onChanged: (val) {
                            print('Password: $val');
                            setState(() => password = val);
                          },
                        ),
                        SizedBox(height: 20.0),
                        TextFormField(
                          obscureText: true,
                          decoration: textInputDecoration.copyWith(
                              hintText: 're-enter password'),
                          validator: (val) => val != password
                              ? 'Password does not match'
                              : null,
                          onChanged: (val) {
                            print('Check Password: $val');
                            setState(() => checkPassword = val);
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.purpleAccent[100]),
                          ),
                          child: Text('Register'),
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              setState(() {
                                loading = true;
                              });
                              dynamic result =
                                  await _auth.registerWithEmailAndPassword(
                                      email, password);
                              if (result == null) {
                                print("Error registering");
                                setState(() {
                                  error = 'Error registering';
                                  loading = false;
                                });
                              } else {
                                print("Register successfully");
                                print(result.uid);
                              }
                            }
                          }),
                    ],
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    error,
                    style: TextStyle(color: Colors.red, fontSize: 14.0),
                  ),
                ],
              )),
            ),
          );
  }
}
