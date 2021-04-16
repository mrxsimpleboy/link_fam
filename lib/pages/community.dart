import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../widget/nav-drawer.dart';

class CommunitysearchWidget extends StatelessWidget {
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
                  
            /////////////////////////////////////////////////////////////////////////////////////////
                    Container(
                      width: MediaQuery.of(context).size.width*0.98,//414.0000305175781,
                      height: MediaQuery.of(context).size.height*0.8,//896.0000610351562,
                  
                           child: Stack(
                             children: <Widget>[
                          
                                  //////search bar//////////////////////////////////////
                                  Positioned(
                                    top: 0,
                                    left: -156.77053833007812,
                                    child: Container(
                                  width: 95.2294692993164,
                                  height: 92,
                                  
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Transform.rotate(
                                        angle: -180 * (math.pi / 180),
                                        child: Container(
                                        width: 95.2294692993164,
                                        height: 92,
                                        decoration: BoxDecoration(
                                          color : Color.fromRGBO(243, 161, 136, 1),
                                      borderRadius : BorderRadius.all(Radius.elliptical(95.2294692993164, 92)),
                                                                )
                                                        ),
                                                              )
                                      ),
                                      Positioned(
                                        top: 16,
                                        left: -14.0338134765625,
                                        child: Transform.rotate(
                                        angle: -180 * (math.pi / 180),
                                        child: Container(
                                        width: 67.16183471679688,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          boxShadow : [BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.25),
                                          offset: Offset(0,4),
                                          blurRadius: 4
                                      )],
                                      image : DecorationImage(
                                          image: AssetImage('assets/images/community/Rectangle27.png'),
                                          fit: BoxFit.fitWidth
                                                            ),
                                                                )
                                      ),
                                          )
                                        ),
                                    ]
                                  )
                                )
                                  ),
                                  
                                  Positioned(
                                    top: 86,
                                    left: 12,
                                    child: Container(
                                  width: 390,
                                  height: 76,
                                  
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                    top: 66,
                                    left: 0,
                                    child: Container(
                                    width: 390,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(251, 233, 224, 1),
                              )
                                  )
                                  ),Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                    width: 390,
                                    height: 44,
                                    decoration: BoxDecoration(
                                      borderRadius : BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25),
                                        bottomLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25),
                                      ),
                                  color : Color.fromRGBO(251, 233, 224, 1),
                              )
                                  )
                                  ),Positioned(
                                    top: 5.4813232421875,
                                    left: 3,
                                    child: Transform.rotate(
                                    angle: 5.236266587755324 * (math.pi / 180),
                                    child: Container(
                                    width: 49.10317611694336,
                                    height: 38.19136047363281,
                                    decoration: BoxDecoration(
                                  //     boxShadow : [BoxShadow(
                                  //     color: Color.fromRGBO(0, 0, 0, 0.25),
                                  //     offset: Offset(0,4),
                                  //     blurRadius: 4
                                  // )],
                                  image : DecorationImage(
                                      image: AssetImage('assets/images/community/Rectangle45.png'),
                                      fit: BoxFit.contain
                                  ),
                              )
                                  ),
                                  )
                                  ),Positioned(
                                    top: 9.19854736328125,
                                    left: 64.95697021484375,
                                    child: Transform.rotate(
                                    angle: 0.1911339363142767 * (math.pi / 180),
                                    child: Text('helper', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(74, 82, 81, 1),
                                    fontFamily: 'Roboto',
                                    fontSize: 18,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                  ),),
                                  )
                                  ),
                                    ]
                                  )
                                )
                                  ),
                                  
                                  Positioned(
                                    top: 163,
                                    left: 12,
                                    child: Container(
                                  width: 389,
                                  height: 117,
                                  
                                  child: Stack(
                                    children: <Widget>[
                                      ///user1/////////////////////////////////////////////////////////////////////////
                                      Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                    width: 389,
                                    height: 117,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(251, 233, 224, 1),
                              )
                                  )
                                  ),Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                    width: 389,
                                    height: 107,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 249, 246, 1),
                              )
                                  )
                                  ),
                                  ////////////////////////////////////////////////////////////////////////////////
                                  Positioned(
                                    top: 15,
                                    left: 2.0857908725738525,
                                    child: Text('UserName1', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(52, 59, 59, 1),
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                  ),)
                                  ),Positioned(
                                    top: 15,
                                    left: 88,
                                    child: Text('Eduction- piano teaching', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(52, 59, 59, 1),
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                  ),)
                                  ),Positioned(
                                    top: 27,
                                    left: 88,
                                    child: Text('I know how to play piano, violin, viola, cello.\nI have also been an orchestra chief \nand played musical instruments.', 
                                    textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(74, 82, 81, 1),
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
                                  ///user2/////////////////////////////////////////////////////////////////////////
                                  Positioned(
                                    top: 280,
                                    left: 12,
                                    child: Container(
                                  width: 389,
                                  height: 117,
                                  
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                    width: 389,
                                    height: 117,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(251, 233, 224, 1),
                              )
                                  )
                                  ),Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                    width: 389,
                                    height: 107,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 249, 246, 1),
                              )
                                  )
                                  ),Positioned(
                                    top: 15,
                                    left: 2.0857908725738525,
                                    child: Text('UserName2', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(52, 59, 59, 1),
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                  ),)
                                  ),Positioned(
                                    top: 15,
                                    left: 88,
                                    child: Text('cosmetic helper', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(52, 59, 59, 1),
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                  ),)
                                  ),Positioned(
                                    top: 27,
                                    left: 88,
                                    child: Text('we look for someone who is caring \nand loves to play with kids',
                                    textAlign: TextAlign.left, style: TextStyle(
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
                                  
                                  ///offical account/////////////////////////////////////////////////////////////////////////
                                  Positioned(
                                    top: 397,
                                    left: 12,
                                    child: Container(
                                  width: 389,
                                  height: 117,
                                  
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                    width: 389,
                                    height: 117,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(251, 233, 224, 1),
                              )
                                  )
                                  ),Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                    width: 389,
                                    height: 107,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 249, 246, 1),
                              )
                                  )
                                  ),Positioned(
                                    top: 14,
                                    left: 3,
                                    child: Text('Official\nAccount', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(52, 59, 59, 1),
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                  ),)
                                  ),Positioned(
                                    top: 15,
                                    left: 88,
                                    child: Text('entrepreneurship', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(52, 59, 59, 1),
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                  ),)
                                  ),Positioned(
                                    top: 27,
                                    left: 88,
                                    child: Text('Co-marketing with other startups is a great', 
                                    textAlign: TextAlign.left, style: TextStyle(
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
      );
  }
}
