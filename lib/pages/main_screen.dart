        import 'package:flutter/material.dart';
        import 'dart:math' as math;
        import '../widget/nav-drawer.dart';
        
        
        class MainscreenWidget extends StatefulWidget {
        @override
        _MainscreenWidgetState createState() => _MainscreenWidgetState();
        }
        
        class _MainscreenWidgetState extends State<MainscreenWidget> {
        @override
        Widget build(BuildContext context) {
            return Scaffold(
                drawer: NavDrawer(),
                  appBar: AppBar(
                    title: Text('link_fam.'),
                    backgroundColor: Color.fromRGBO(234, 218, 209, 1.0),
                    shape: ContinuousRectangleBorder(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(60.0),
                        bottomRight: Radius.circular(60.0),
                          ),
                        ),
                  ),
//                backgroundColor: Color.fromRGBO(251, 233, 224, 1),
                backgroundColor: Color(0xFFFFF9F6),
                body:
                  // Row(
                  //   children: <Widget> [
            /////////////////////////////////////////////////////////////////////////////////////////
                  Container(
                    width: MediaQuery.of(context).size.width*0.98,
                    height: MediaQuery.of(context).size.height*0.98,
                        
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              left: 0,
                            child: Container(
                              width: 414,
                              height: 224,
                          
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                            top: 0,
                            left: 49,
                            child: Container(
                          width: 321,
                          height: 168,
                          
                          child: Stack(
                            children: <Widget>[
                          
                      // help content//////////////////////////////////
                          Positioned(
                            top: 0,
                            left: 185,
                            child: Transform.rotate(
                            angle: 1.987846675914698e-16 * (math.pi / 180),
                            child: Divider(
                            color: Color.fromRGBO(224, 240, 239, 1),
                            thickness: 3
                          )
                          ,
                          )
                          ),Positioned(
                            top: 32,
                            left: 59,
                            child: Text('Helper TimeTable', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(52, 59, 59, 1),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),Positioned(
                            top: 52,
                            left: 232,
                            child: Text('', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(52, 59, 59, 1),
                            fontFamily: 'Roboto',
                            fontSize: 11,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),Positioned(
                            top: 64,
                            left: 296,
                            child: Transform.rotate(
                            angle: 166.65469889200074 * (math.pi / 180),
                            child: Container(
                            width: 33,
                            height: 33,
                            decoration: BoxDecoration(
                              boxShadow : [BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0,4),
                              blurRadius: 4
                          )],
                          image : DecorationImage(
                              image: AssetImage('assets/images/mainscreen/Rectangle31.png'),
                              fit: BoxFit.fitWidth
                          ),
                      )
                          ),
                          )
                          ),Positioned(
                            top: 47,
                            left: 20,
                            child: Container(
                            width: 34,
                            height: 35,
                            decoration: BoxDecoration(
                              boxShadow : [BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0,4),
                              blurRadius: 4
                          )],
                          image : DecorationImage(
                              image: AssetImage('assets/images/mainscreen/Rectangle30.png'),
                              fit: BoxFit.fitWidth
                          ),
                      )
                          )
                          ),Positioned(
                            top: 23,
                            left: 0,
                            child: Container(
                            width: 84,
                            height: 35,
                            decoration: BoxDecoration(
                              boxShadow : [BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0,4),
                              blurRadius: 4
                          )],
                          image : DecorationImage(
                              image: AssetImage('assets/images/mainscreen/Rectangle10.png'),
                              fit: BoxFit.contain
                                    ),
                                )
                                    )
                                    ),
                            ]
                          )
                        )
                          ),
                          
                          
                          /////////////////////////////////////////////////////////////////////////
                                ]
                              )
                            )
                          ),
                          /////////////////////////////////////////////////////////////////////////
                          ////time table 
                          Positioned(
                            top: 92,
                            left: 21,
                            child: Container(
                          width: 371,
                          height: 516,
                          
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                          width: 371,
                          height: 516,
                          /////rectangle table background
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                            top: 0,
                            left: 27,
                            child: Container(
                            width: 344,
                            height: 516,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                          color : Color.fromRGBO(228, 251, 249, 1),
                      )
                          )
                          ),Positioned(
                            top: 43,
                            left: 62,
                            child: Container(
                            width: 73,
                            height: 460,
                            decoration: BoxDecoration(
                              color : Color.fromRGBO(224, 240, 239, 1),
                      )
                          )
                          ),Positioned(
                            top: 43,
                            left: 135,
                            child: Container(
                            width: 73,
                            height: 460,
                            decoration: BoxDecoration(
                              color : Color.fromRGBO(236, 243, 243, 1),
                      )
                          )
                          ),Positioned(
                            top: 43,
                            left: 208,
                            child: Container(
                            width: 73,
                            height: 460,
                            decoration: BoxDecoration(
                              color : Color.fromRGBO(224, 240, 239, 1),
                      )
                          )
                          ),Positioned(
                            top: 43,
                            left: 281,
                            child: Container(
                            width: 73,
                            height: 460,
                            decoration: BoxDecoration(
                              color : Color.fromRGBO(237, 244, 243, 1),
                      )
                          )
                          ),
                          ///table text
                          Positioned(
                            top: 88,
                            left: 75,
                            child: Text('9 am Work', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),Positioned(
                            top: 341,
                            left: 73,
                            child: Text('Business Travel', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),Positioned(
                            top: 88,
                            left: 146,
                            child: Text('9:30 am Work', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),Positioned(
                            top: 88,
                            left: 287,
                            child: Text('8 pm Tutorial ', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),Positioned(
                            top: 410,
                            left: 290,
                            child: Text('4 pm Piano ', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),Positioned(
                            top: 410,
                            left: 142,
                            child: Text('4 pm Business Meeting', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),Positioned(
                            top: 204,
                            left: 217,
                            child: Text('8 pm Math Tutorial ', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),
                          
                          //////////////time table weekday//
                           //timetable mon
                          Positioned(
                            top: 77,
                            left: 0,
                            child: Container(
                              width: 53,
                              height: 422,    

                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                              width: 53,
                              height: 38,
                          
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                            top: 0,
                            left: 7,
                            child: Transform.rotate(
                            angle: -90 * (math.pi / 180),
                            child: Container(
                            width: 38,
                            height: 39,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(11),
                                topRight: Radius.circular(11),
                                bottomLeft: Radius.circular(11),
                                bottomRight: Radius.circular(11),
                              ),
                          color : Color.fromRGBO(229, 229, 229, 1),
                      )
                          ),
                          )
                          ),
                          Positioned(
                            top: 11,
                            left: 0,
                            child: Text('Mon', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(52, 59, 59, 1),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),
                            ]
                          )
                        )
                          ),
                          
                          //timetable tue
                          Positioned(
                            top: 64,
                            left: 0,
                            child: Container(
                          width: 53,
                          height: 38,
                          //tue oval
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                            top: 0,
                            left: 7,
                            child: Transform.rotate(
                            angle: -90 * (math.pi / 180),
                            child: Container(
                            width: 38,
                            height: 39,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(11),
                                topRight: Radius.circular(11),
                                bottomLeft: Radius.circular(11),
                                bottomRight: Radius.circular(11),
                              ),
                          color : Color.fromRGBO(229, 229, 229, 1),
                      )
                          ),
                          )
                          ),Positioned(
                            top: 11,
                            left: 0,
                            child: Text('Tue', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(52, 59, 59, 1),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),
                            ]
                          )
                        )
                          ),
                          //timetable wed
                          Positioned(
                            top: 128,
                            left: 0,
                            child: Container(
                          width: 53,
                          height: 38,
                          //wed oval
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                            top: 0,
                            left: 7,
                            child: Transform.rotate(
                            angle: -90 * (math.pi / 180),
                            child: Container(
                            width: 38,
                            height: 39,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(11),
                                topRight: Radius.circular(11),
                                bottomLeft: Radius.circular(11),
                                bottomRight: Radius.circular(11),
                              ),
                          color : Color.fromRGBO(229, 229, 229, 1),
                      )
                          ),
                          )
                          ),Positioned(
                            top: 11,
                            left: 0,
                            child: Text('Wed', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(52, 59, 59, 1),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),
                            ]
                          )
                        )
                          ),
                          //timetable thursday
                          Positioned(
                            top: 192,
                            left: 0,
                            child: Container(
                          width: 53,
                          height: 38,
                          //thur oval
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                            top: 0,
                            left: 7,
                            child: Transform.rotate(
                            angle: -90 * (math.pi / 180),
                            child: Container(
                            width: 38,
                            height: 39,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(11),
                                topRight: Radius.circular(11),
                                bottomLeft: Radius.circular(11),
                                bottomRight: Radius.circular(11),
                              ),
                          color : Color.fromRGBO(229, 229, 229, 1),
                      )
                          ),
                          )
                          ),Positioned(
                            top: 11,
                            left: 0,
                            child: Text('Thu', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(52, 59, 59, 1),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),
                            ]
                          )
                        )
                          ),
                          //timetable friday
                          Positioned(
                            top: 256,
                            left: 0,
                            child: Container(
                          width: 53,
                          height: 38,
                          //oval friday
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                            top: 0,
                            left: 7,
                            child: Transform.rotate(
                            angle: -90 * (math.pi / 180),
                            child: Container(
                            width: 38,
                            height: 39,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(11),
                                topRight: Radius.circular(11),
                                bottomLeft: Radius.circular(11),
                                bottomRight: Radius.circular(11),
                              ),
                          color : Color.fromRGBO(229, 229, 229, 1),
                      )
                          ),
                          )
                          ),Positioned(
                            top: 11,
                            left: 0,
                            child: Text('Fri', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(52, 59, 59, 1),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),
                            ]
                          )
                        )
                          ),
                          
                          //timetable saturday
                          Positioned(
                            top: 320,
                            left: 0,
                            child: Container(
                          width: 53,
                          height: 38,
                          //sat oval
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                            top: 0,
                            left: 7,
                            child: Transform.rotate(
                            angle: -90 * (math.pi / 180),
                            child: Container(
                            width: 38,
                            height: 39,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(11),
                                topRight: Radius.circular(11),
                                bottomLeft: Radius.circular(11),
                                bottomRight: Radius.circular(11),
                              ),
                          color : Color.fromRGBO(237, 244, 243, 1),
                      )
                          ),
                          )
                          ),Positioned(
                            top: 11,
                            left: 0,
                            child: Text('Sat', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(52, 59, 59, 1),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),
                            ]
                          )
                        )
                          ),
                          //timetable sunday
                          Positioned(
                            top: 384,
                            left: 0,
                            child: Container(
                          width: 53,
                          height: 38,
                          //sun oval
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                            top: 0,
                            left: 7,
                            child: Transform.rotate(
                            angle: -90 * (math.pi / 180),
                            child: Container(
                            width: 38,
                            height: 39,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(11),
                                topRight: Radius.circular(11),
                                bottomLeft: Radius.circular(11),
                                bottomRight: Radius.circular(11),
                              ),
                          color : Color.fromRGBO(237, 244, 243, 1),
                      )
                          ),
                          )
                          ),Positioned(
                            top: 11,
                            left: 0,
                            child: Text('Sun', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(52, 59, 59, 1),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),
                            ]
                          )
                        )
                          ),
                            ]
                          )
                        )
                          ),
                            ]
                          )
                        )
                          ),
                          //title text
                          Positioned(
                            top: 24,
                            left: 52,
                            child: Container(
                          width: 312,
                          height: 38,
                          
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                            top: 0,
                            left: 0,
                            child: Text('Father', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(52, 59, 59, 1),
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),Positioned(
                            top: 0,
                            left: 78,
                            child: Text('Mother', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(52, 59, 59, 1),
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),Positioned(
                            top: 0,
                            left: 149,
                            child: Text('Name1', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(52, 59, 59, 1),
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),Positioned(
                            top: 0,
                            left: 224,
                            child: Text('Name2', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(52, 59, 59, 1),
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                          ),)
                          ),
                            ]
                          )
                        )
                          ),
                            ]
                          )
                        )
                          ),
                          
                          ///////bottom///////////////////////////////////////////
                          Positioned(
                            top: 786,
                            left: 414,
                            child: Container(
                          width: 415,
                          height: 110,
                          
                          child: Stack(
                            children: <Widget>[
                     
                            ]
                          )
                        )
                          ),
                        //     ]
                        //   )
                        // )
                         // ),
                            ]
                          )
                      )
                    
    );
  }
}
