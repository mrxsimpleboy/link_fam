import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:practice_carousel/services/auth.dart';
import 'package:practice_carousel/shared/loading_page.dart';
import '../widget/nav-drawer.dart';
import 'index_page.dart';

class LoginInputPage extends StatefulWidget {
  @override
  _LoginInputPageState createState() => _LoginInputPageState();
}

class _LoginInputPageState extends State<LoginInputPage> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return loading
        ? LoadingPage(prompt: 'Loading...')
        : Scaffold(
            drawer: NavDrawer(),
            appBar: AppBar(
              title: Text('link_fam.'),
              backgroundColor: Color.fromRGBO(234, 218, 209, 1.0),
            ),
            backgroundColor: Color(0xFFEDF4F3), // Color(0xFFE5FAFB),
            body: Form(
                key: _formKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        //initialValue: "hack@ust.hk",
                        decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          //hasFloatingPlaceholder: false,
                          labelText: "Login Email",
                          helperText: "",
                          errorText: "",
                          // hintText: "hintText",
                          // prefixIcon: Icon(Icons.perm_identity),
                          // prefixText: "prefix",
                        ),
                        validator: (val) => EmailValidator.validate(val)
                            ? null
                            : 'Please give a valid email',
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                      ),
                      TextFormField(
                        //initialValue:"test1234",
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(Icons.text_fields_outlined),
                          labelText: "Password",
                          helperText: "",
                          errorText: "",
                        ),
                        validator: (val) => val.length < 6
                            ? 'Password has at least 6 characters'
                            : null,
                        onChanged: (val) {
                          setState(() => password = val);
                        },
                      ),
                      ButtonTheme(
                          minWidth: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: ElevatedButton(
                            child: Text('Log in', textAlign: TextAlign.center),
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(161, 188, 186,
                                    1), //Color(0xFFE5FAFB),//Color.fromRGBO(228, 251, 249, 1),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 20),
                                textStyle: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                                shape: StadiumBorder()),
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                setState(() {
                                  loading = true;
                                });
                                dynamic result =
                                    await _auth.signInWithEmailAndPassword(
                                        email, password);
                                if (result == null) {
                                  setState(() {
                                    loading = false;
                                    error = "Error signing in";
                                  });
                                  print("Error signing in");
                                } else {
                                  print("Sign in successfully");
                                  print(result.uid);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => IndexPage()),
                                  );
                                }
                              }
                            },
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        error,
                        style: TextStyle(color: Colors.red, fontSize: 20.0),
                      ),
                    ])));
  }
}
