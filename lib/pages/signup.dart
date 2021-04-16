import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:practice_carousel/models/user.dart';
import 'package:practice_carousel/pages/index_page.dart';
import 'package:practice_carousel/services/auth.dart';
import 'package:practice_carousel/services/database.dart';
import 'package:practice_carousel/shared/loading_page.dart';
import '../widget/nav-drawer.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;
  String name = '';
  String mobile = '';
  String idCardNumber = '';
  String address = '';
  String email = '';
  String password = '';
  String checkPassword = '';
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
            resizeToAvoidBottomInset: false,
            body: Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.pink[50],
                    width: 2,
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/background/pink.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.pink[50],
                            width: 2,
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.deepOrange[50],
                                blurRadius: 15.0,
                                offset: Offset(0.0, 0.75))
                          ],
                        ),
                        width: MediaQuery.of(context).size.width * 0.99,
                        height: MediaQuery.of(context).size.height * 0.50,
                        child: Form(
                          key: _formKey,
                          child: Scrollbar(
                            thickness: 10,
                            isAlwaysShown: true,
                            child: ListView(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  TextFormField(
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.person),
                                      labelText: "Name",
                                      helperText: "",
                                      errorText: "",
                                      contentPadding: new EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 10.0),
                                    ),
                                    validator: (val) => val.isEmpty == false
                                        ? null
                                        : 'Please enter your name',
                                    onChanged: (val) {
                                      setState(() => name = val);
                                    },
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.mobile_friendly_sharp),
                                      labelText: "Mobile",
                                      helperText: "",
                                      errorText: "",
                                      contentPadding: new EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 10.0),
                                    ),
                                    validator: (val) => val.isEmpty == false
                                        ? null
                                        : 'Please give your mobile number',
                                    onChanged: (val) {
                                      setState(() => mobile = val);
                                    },
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.home),
                                      labelText: "id Card Number",
                                      helperText: "",
                                      errorText: "",
                                      contentPadding: new EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 10.0),
                                    ),
                                    validator: (val) => val.isEmpty == false
                                        ? null
                                        : 'Please give your id Card Number',
                                    onChanged: (val) {
                                      setState(() => idCardNumber = val);
                                    },
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.home),
                                      labelText: "Address",
                                      helperText: "",
                                      errorText: "",
                                      contentPadding: new EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 10.0),
                                    ),
                                    validator: (val) => val.isEmpty == false
                                        ? null
                                        : 'Please give your home address',
                                    onChanged: (val) {
                                      setState(() => address = val);
                                    },
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.email),
                                      labelText: "Email",
                                      helperText: "",
                                      errorText: "",
                                      contentPadding: new EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 10.0),
                                    ),
                                    validator: (val) =>
                                        EmailValidator.validate(val)
                                            ? null
                                            : 'Please give a valid email',
                                    onChanged: (val) {
                                      setState(() => email = val);
                                    },
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.email),
                                      labelText: "Password",
                                      helperText: "",
                                      errorText: "",
                                      contentPadding: new EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 10.0),
                                    ),
                                    validator: (val) => val.length < 6
                                        ? 'Password length at least 6 characters'
                                        : null,
                                    onChanged: (val) {
                                      print('Password: $val');
                                      setState(() => password = val);
                                    },
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.email),
                                      labelText: "Re-enter Password",
                                      helperText: "",
                                      errorText: "",
                                      contentPadding: new EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 10.0),
                                    ),
                                    validator: (val) => val != password
                                        ? 'Password does not match'
                                        : null,
                                    onChanged: (val) {
                                      print('Check Password: $val');
                                      setState(() => checkPassword = val);
                                    },
                                  ),
                                ]),
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ElevatedButton(
                          child: Text('signup', textAlign: TextAlign.center),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(228, 251, 249, 1),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                              textStyle: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                              shape: StadiumBorder()),
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
                                AppUserData data = AppUserData(
                                    uid: result.uid,
                                    name: name,
                                    mobile: mobile,
                                    idCardNumber: idCardNumber,
                                    email: email,
                                    userAddress: address);
                                await DatabaseService().updateUserData(data);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => IndexPage()),
                                );
                              }
                            }
                          },
                        )),
                    Text(
                      error,
                      style: TextStyle(color: Colors.red, fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ));
  }
}
