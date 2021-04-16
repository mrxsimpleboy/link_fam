import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:practice_carousel/services/auth.dart';
import '../pages/login.dart';
import '../pages/profile.dart';
import '../pages/signup.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/Baby-Cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () async {
              return showDialog<void>(
                context: context,
                barrierDismissible: false, // user must tap button!
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Exit Warning'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: <Widget>[
                          Text(
                              'This action would sign out your current account, are you sure to do this?'),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Yes'),
                        onPressed: () async {
                          try {
                            String user = _auth.currentUser.uid;
                            await AuthService().signOut();
                            print('user $user logout');
                          } catch (e) {
                            print(e.toString());
                          }
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginpageWidget()));
                        },
                      ),
                      TextButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {
              if (_auth.currentUser != null)
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProfileWidget();
                  })),
                }
              else
                {
                  Navigator.of(context).pop(),
                }
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Signup'),
            onTap: () async {
              return showDialog<void>(
                context: context,
                barrierDismissible: false, // user must tap button!
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Signup Warning'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: <Widget>[
                          Text(
                              'This action would sign out your current account, are you sure to do this?'),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Yes'),
                        onPressed: () async {
                          try {
                            String user = _auth.currentUser.uid;
                            await AuthService().signOut();
                            print('user $user logout');
                          } catch (e) {
                            print(e.toString());
                          }
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()));
                        },
                      ),
                      TextButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () async {
              try {
                String user = _auth.currentUser.uid;
                await AuthService().signOut();
                print('user $user logout');
              } catch (e) {
                print(e.toString());
              }
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginpageWidget()));
            },
          ),
        ],
      ),
    );
  }
}
