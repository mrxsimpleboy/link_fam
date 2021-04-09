import 'package:flutter/material.dart';
import 'package:practice_carousel/widget/nav-drawer.dart';
import 'profile.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
          title: Text('link_fam.'),
          backgroundColor: Color.fromRGBO(234, 218, 209, 1.0),
      ),
      body:
      Container(
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
      
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hasFloatingPlaceholder: false,
                      labelText: "Name",
                      helperText: "",
                      errorText: "",
                    // hintText: "hintText",
                      // prefixIcon: Icon(Icons.perm_identity),
                      // prefixText: "prefix",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.mobile_friendly_sharp),
                      labelText: "Mobile",
                      helperText: "",
                      errorText: "",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.home),
                      labelText: "id Card Number",
                      helperText: "",
                      errorText: "",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      labelText: "Email",
                      helperText: "",
                      errorText: "",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.home),
                      labelText: "Address",
                      helperText: "",
                      errorText: "",
                    ),
                  ),

                  ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width*0.5,
                      height: MediaQuery.of(context).size.height*0.1,
                      child: ElevatedButton(
                        child: Text('signup', textAlign: TextAlign.center) ,
                        style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(228, 251, 249, 1),
                              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                              textStyle: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                              shape: StadiumBorder()),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProfileWidget()),
                            );},
                      )
                  ),
                ]
          )
        )
    );
  }
}
