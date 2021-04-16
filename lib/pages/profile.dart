import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:practice_carousel/models/user.dart';
import 'package:practice_carousel/services/database.dart';
import 'package:practice_carousel/shared/loading_page.dart';
import './index_page.dart';
import 'login.dart';

void paint(Size size) {
  Canvas canvas;
  var paint = Paint();
  paint.color = Colors.amber;
  paint.strokeWidth = 5;

  canvas.drawLine(
    Offset(0, size.height / 4),
    Offset(size.width * 0.5, size.height / 4),
    paint,
  );

  paint.color = Colors.pink;
  paint.strokeWidth = 5;

  canvas.drawLine(
    Offset(50, size.height / 4),
    Offset(size.width, size.height / 4),
    paint,
  );
}

class ProfileWidget extends StatefulWidget {
  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    var _offsetwidth = MediaQuery.of(context).size.width;
    final User _user = FirebaseAuth.instance.currentUser;
    DatabaseService _service;
    if (_user != null) {
      print('In profile widget:${_user.uid}');
      _service = DatabaseService(uid: _user.uid);
    }
    return _user == null
        ? LoginpageWidget()
        : StreamBuilder<DocumentSnapshot>(
            // stream: _service.userData,
            stream: FirebaseFirestore.instance
                .collection('profiles')
                .doc(_user.uid)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                DocumentSnapshot data = snapshot.data;
                AppUserData userData = AppUserData(
                  uid: _user.uid,
                  name: data.get('name'),
                  mobile: data.get('mobile'),
                  idCardNumber: data.get('idCardNumber'),
                  email: data.get('email'),
                  userAddress: data.get('address'),
                );
                return Scaffold(
                    backgroundColor: Color.fromRGBO(251, 233, 224, 1),
                    body: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                      width: 89,
                                      height: 83,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(243, 161, 136, 1),
                                          width: 7,
                                        ),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/login/Ellipse1.png'),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(89, 83)),
                                      )),
                                  Container(
                                      width: 213,
                                      height: 121,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/login/Rectangle3.png'),
                                            fit: BoxFit.contain),
                                      )),
                                ]),
                            Row(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      child: Stack(children: <Widget>[
                                    Text('Requestor Lv 2',
                                        textAlign: TextAlign.right),
                                    CustomPaint(
                                        foregroundPainter: LinePainter(
                                            Offset(_offsetwidth * 0.1, 0),
                                            (Offset(_offsetwidth * 0.2, 0)),
                                            Colors.amber)),
                                    CustomPaint(
                                        foregroundPainter: LinePainter(
                                            Offset(_offsetwidth * 0.2, 0),
                                            (Offset(_offsetwidth * 0.6, 0)),
                                            Colors.grey)),
                                  ])),
                                ]),
                            Row(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      child: Stack(children: <Widget>[
                                    Text('Helper Lv 2',
                                        textAlign: TextAlign.right),
                                    CustomPaint(
                                        foregroundPainter: LinePainter(
                                            Offset(_offsetwidth * 0.1, 0),
                                            (Offset(_offsetwidth * 0.2, 0)),
                                            Colors.amber)),
                                    CustomPaint(
                                        foregroundPainter: LinePainter(
                                            Offset(_offsetwidth * 0.2, 0),
                                            (Offset(_offsetwidth * 0.6, 0)),
                                            Colors.grey)),
                                  ])),
                                ]),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Comment Review Star'),
                                Icon(Icons.star, color: Colors.yellow[500]),
                                Icon(Icons.star, color: Colors.yellow[500]),
                                Icon(Icons.star, color: Colors.yellow[500]),
                                Icon(Icons.star, color: Colors.grey),
                                Icon(Icons.star, color: Colors.grey),
                              ],
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text('Name:', textAlign: TextAlign.left),
                                  Text('${userData.name}'),
                                  SizedBox(height: 10),
                                  Text('Home address:',
                                      textAlign: TextAlign.left),
                                  Text('${userData.userAddress}'),
                                  SizedBox(height: 10),
                                  Text('Contact Number:',
                                      textAlign: TextAlign.left),
                                  Text('${userData.mobile}'),
                                  SizedBox(height: 10),
                                  Text('Family Members:',
                                      textAlign: TextAlign.left),
                                  Text(' ', textAlign: TextAlign.left),
                                  SizedBox(height: 10),
                                  Text('Email Address:',
                                      textAlign: TextAlign.left),
                                  Text('${userData.email}'),
                                  SizedBox(height: 10),
                                  Text('ID card number:',
                                      textAlign: TextAlign.left),
                                  Text('${userData.idCardNumber}'),
                                ]),
                            //   ]
                            // ),
                            ButtonTheme(
                                child: ElevatedButton(
                              child:
                                  Text('Setting', textAlign: TextAlign.center),
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(228, 251, 249, 1),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 20),
                                  textStyle: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                  shape: StadiumBorder()),
                              onPressed: () {
                                showModalBottomSheet(
                                    isScrollControlled: true,
                                    elevation: 5,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding: EdgeInsets.all(15),
                                        child: SettingsForm(),
                                      );
                                      // return Container(
                                      //   padding: EdgeInsets.symmetric(
                                      //       vertical: 20.0,
                                      //       horizontal: 60.0),
                                      //   child: SettingsForm(),
                                      // );
                                    });
                              },
                            )),
                            ButtonTheme(
                                minWidth:
                                    MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                child: ElevatedButton(
                                  child:
                                      Text('Home', textAlign: TextAlign.center),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color.fromRGBO(228, 251, 249, 1),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 20),
                                      textStyle: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                      shape: StadiumBorder()),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => IndexPage()),
                                    );
                                  },
                                )),
                          ]),
                    ));
              } else {
                return LoadingPage(prompt: 'Loading your profile...');
              }
            });
  }
}

class LinePainter extends CustomPainter {
  Paint _paint;
  Offset _offset;
  Offset _start;

  LinePainter(Offset start, Offset offset, Color color) {
    _offset = offset;
    _start = start;
    _paint = Paint()
      ..color = color
      ..strokeWidth = 8.0;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(_start, _offset, _paint);
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) {
    return true;
  }
}

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  final User _user = FirebaseAuth.instance.currentUser;
  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3', '4'];
  final List<int> strengths = [100, 200, 300, 400, 500, 600, 700, 800, 900];

  // form values
  String error;
  bool loading = false;
  String name;
  String mobile;
  String idCardNumber;
  String address;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        // stream: _service.userData,
        stream: FirebaseFirestore.instance
            .collection('profiles')
            .doc(_user.uid)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            DocumentSnapshot data = snapshot.data;
            AppUserData userData = AppUserData(
              uid: _user.uid,
              name: data.get('name'),
              mobile: data.get('mobile'),
              idCardNumber: data.get('idCardNumber'),
              email: data.get('email'),
              userAddress: data.get('address'),
            );

            return Container(
              height: 200,
              alignment: Alignment.bottomCenter,
              child: Form(
                key: _formKey,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    ButtonTheme(
                        height: 20,
                        child: ElevatedButton(
                          child: Text('Update Settings',
                              textAlign: TextAlign.center),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(228, 251, 249, 1),
                              textStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              shape: StadiumBorder()),
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              setState(() {
                                loading = true;
                              });
                              AppUserData data = AppUserData(
                                  uid: _user.uid,
                                  name: name ?? userData.name,
                                  mobile: mobile ?? userData.mobile,
                                  idCardNumber:
                                      idCardNumber ?? userData.idCardNumber,
                                  email: userData.email,
                                  userAddress: address ?? userData.userAddress);
                              await DatabaseService().updateUserData(data);
                              setState(() {
                                loading = false;
                              });
                              Navigator.pop(context);
                            }
                          },
                        )),
                    SizedBox(height: 10.0),
                    TextFormField(
                      initialValue: userData.name,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: "Name",
                        helperText: "",
                        errorText: "",
                      ),
                      validator: (val) => val.isEmpty == false
                          ? null
                          : 'Please enter your name',
                      onChanged: (val) {
                        setState(() => name = val);
                      },
                    ),
                    TextFormField(
                      initialValue: userData.mobile,
                      decoration: InputDecoration(
                        icon: Icon(Icons.mobile_friendly_sharp),
                        labelText: "Mobile",
                        helperText: "",
                        errorText: "",
                      ),
                      validator: (val) => val.isEmpty == false
                          ? null
                          : 'Please give your mobile number',
                      onChanged: (val) {
                        setState(() => mobile = val);
                      },
                    ),
                    TextFormField(
                      initialValue: userData.idCardNumber,
                      decoration: InputDecoration(
                        icon: Icon(Icons.home),
                        labelText: "id Card Number",
                        helperText: "",
                        errorText: "",
                      ),
                      validator: (val) => val.isEmpty == false
                          ? null
                          : 'Please give your id Card Number',
                      onChanged: (val) {
                        setState(() => idCardNumber = val);
                      },
                    ),
                    TextFormField(
                      initialValue: userData.userAddress,
                      decoration: InputDecoration(
                        icon: Icon(Icons.home),
                        labelText: "Address",
                        helperText: "",
                        errorText: "",
                      ),
                      validator: (val) => val.isEmpty == false
                          ? null
                          : 'Please give your home address',
                      onChanged: (val) {
                        setState(() => address = val);
                      },
                    ),
                  ],
                ),
              ),
            );
          } else {
            return LoadingPage(prompt: 'Loading');
          }
        });
  }
}
