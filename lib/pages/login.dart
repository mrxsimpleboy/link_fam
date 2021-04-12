  import 'package:flutter/material.dart';
  import './profile.dart';
  import 'login_input.dart';
  import 'signup.dart';

  class LoginpageWidget extends StatefulWidget {
  @override
  _LoginpageWidgetState createState() => _LoginpageWidgetState();
  }
  
  class _LoginpageWidgetState extends State<LoginpageWidget> {
  @override
  Widget build(BuildContext context,) {
      return Scaffold(
      backgroundColor: Color.fromRGBO(251, 233, 224, 1),
      body:
        Container(

        width: MediaQuery.of(context).size.width*0.98,//414.0000305175781,
        height: MediaQuery.of(context).size.height*0.98,//896.0000610351562,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          
            
          Container(
          width: 213,
          height: 121,
          decoration: BoxDecoration(
            image : DecorationImage(
            image: AssetImage('assets/images/login/Rectangle3.png'),
            fit: BoxFit.contain
                    ),
                  )
                ),
          
          Container(
          width: 89,
          height: 83,
          decoration: BoxDecoration(
            border : Border.all(
            color: Color.fromRGBO(243, 161, 136, 1),
            width: 7,
                              ),
            image : DecorationImage(
                image: AssetImage('assets/images/login/Ellipse1.png'),
                fit: BoxFit.fill),
                borderRadius : BorderRadius.all(Radius.elliptical(89, 83)),
                )
          ),
        // Positioned(
        //   top: 417.857421875,
        //   left: 58.62896728515625,
        ButtonTheme(
          minWidth: MediaQuery.of(context).size.width*0.5,
          height: MediaQuery.of(context).size.height*0.2,
          child: ElevatedButton(
            child: Text('Login', textAlign: TextAlign.center) ,
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
                MaterialPageRoute(builder: (context) => LoginInputPage()),
                    );
                  },//button
                )
              ),
        // Positioned(
        //   top: 505.8572998046875,
        //   left: 58.483131408691406,
        ButtonTheme(
          minWidth: MediaQuery.of(context).size.width*0.5,
          height: MediaQuery.of(context).size.height*0.2,
          child: ElevatedButton(
            child: Text('SignUp'),
            style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(161, 188, 186, 1),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  shape: StadiumBorder()
                      ),

            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                )
              ),


          Container(
            child: Text('Terms of Services', textAlign: TextAlign.center, style: TextStyle(
            color: Color.fromRGBO(74, 82, 81, 1),
            fontFamily: 'Roboto',
            fontSize: 12,
            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 1
                    ),
                  ),
          ),
          ]
        )
      )
    );
  }
}