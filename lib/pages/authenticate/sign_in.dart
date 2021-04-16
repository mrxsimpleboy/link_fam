import 'package:flutter/material.dart';
import 'package:practice_carousel/services/auth.dart';
import 'package:practice_carousel/shared/constants.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'Register',
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
            Text("Choice 1: anonymously"),
            SizedBox(height: 20.0),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.purpleAccent[100]),
                ),
                child: Text('Sign in anon'),
                onPressed: () async {
                  dynamic result = await _auth.signInAnonymously();
                  if (result == null) {
                    print("Error signing in");
                  } else {
                    print("Sign in successfully");
                    print(result.uid);
                  }
                }),
            SizedBox(height: 20.0),
            Text("Choice 2: email and password"),
            SizedBox(height: 20.0),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: textInputDecoration.copyWith(hintText: 'email'),
                    validator: (val) => val.isEmpty ? 'Enter an email' : null,
                    onChanged: (val) {
                      setState(() => email = val);
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    obscureText: true,
                    decoration:
                        textInputDecoration.copyWith(hintText: 'password'),
                    validator: (val) =>
                        val.length < 6 ? 'Password length >= 6' : null,
                    onChanged: (val) {
                      setState(() => password = val);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.purpleAccent[100]),
                ),
                child: Text('Sign in with email'),
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    setState(() {
                      loading = true;
                    });
                    dynamic result =
                        await _auth.signInWithEmailAndPassword(email, password);
                    if (result == null) {
                      setState(() {
                        loading = false;
                        error = "Error signing in";
                      });
                      print("Error signing in");
                    } else {
                      print("Sign in successfully");
                      print(result.uid);
                    }
                  }
                }),
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
