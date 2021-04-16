import 'package:flutter/material.dart';
import '../widget/nav-drawer.dart';


class CameraWidget extends StatelessWidget {
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
                        
                            //camer screen .///////////////////////////////
                            Positioned(
                              top: 20,
                              left: 20,
                              child: Container(
                                width: 414,
                                height: 302,
                            
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                      width: 414,
                                      height: 302,
                                      decoration: BoxDecoration(
                                        color : Color.fromRGBO(122, 144, 143, 1),
                                              )
                                                  )
                                                  ),
                                    ////play button
                                    Positioned(
                                      top: 270,
                                      left: 321,
                                      child: Container(
                                      width: 81,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        image : DecorationImage(
                                        image: AssetImage('assets/images/camera/Rectangle59.png'),
                                        fit: BoxFit.contain
                                            ),
                                        )
                                            )
                                      ),
                                                  ]
                                            )
                                )
                            ),
                            /////volume panel///////////////////////////////////////////////
                            Positioned(
                              top: 338,
                              left: 28,
                              child: Container(
                            width: 454,
                            height: 65,
                            
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                  width: 394,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    borderRadius : BorderRadius.only(
                                      topLeft: Radius.circular(13),
                                      topRight: Radius.circular(13),
                                      bottomLeft: Radius.circular(13),
                                      bottomRight: Radius.circular(13),
                                    ),
                                color : Color.fromRGBO(244, 185, 166, 0.800000011920929),
                                    )
                                        )
                                ),
                                // Positioned(
                                //   top: 17.599853515625,
                                //   left: 102.5804443359375,
                                //   child: Transform.rotate(
                                //   angle: 179.2877191921194 * (math.pi / 180),
                                //   child: Container(
                                //   width: 48.25239181518555,
                                //   height: 26.692699432373047,
                                //   decoration: BoxDecoration(
                                //     image : DecorationImage(
                                //     image: AssetImage('assets/images/camera/Rectangle28.png'),
                                //     fit: BoxFit.fitWidth
                                //             ),
                                //         )
                                //       ),
                                //   )
                                // ),
                                Positioned(
                                  top: 5,
                                  left: 247,
                                  child: Container(
                                  width: 74,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    image : DecorationImage(
                                    image: AssetImage('assets/images/camera/Rectangle60.png'),
                                    fit: BoxFit.contain
                                          ),
                                      )
                                          )
                                ),
                        //     Positioned(
                        //       top: 5,
                        //       left: 343,
                        //       child: Container(
                        //       width: 111,
                        //       height: 54,
                        //       decoration: BoxDecoration(
                        //         image : DecorationImage(
                        //         image: AssetImage('assets/images/camera/Rectangle62.png'),
                        //         fit: BoxFit.contain
                        //     ),
                        // )
                        //     )
                        //     ),
                                Positioned(
                                  top: 16,
                                  left: 12,
                                  child: Container(
                                  width: 42,
                                  height: 31,
                                  decoration: BoxDecoration(
                                    image : DecorationImage(
                                    image: AssetImage('assets/images/camera/Rectangle61.png'),
                                    fit: BoxFit.contain
                                              ),
                                          )
                                              )
                                ),
                              ]
                            )
                          )
                            ),
                            ///////control up down left right plane
                            Positioned(
                              top: 433,
                              left: 243,
                              child: Container(
                            width: 139,
                            height: 130,
                            
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                              width: 139,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius : BorderRadius.only(
                                  topLeft: Radius.circular(49),
                                  topRight: Radius.circular(49),
                                  bottomLeft: Radius.circular(49),
                                  bottomRight: Radius.circular(49),
                                ),
                            color : Color.fromRGBO(251, 233, 224, 1),
                        )
                            )
                            ),Positioned(
                              top: 50,
                              left: 5,
                              child: Container(
                              width: 53,
                              height: 37,
                              decoration: BoxDecoration(
                            //     boxShadow : [BoxShadow(
                            //     color: Color.fromRGBO(0, 0, 0, 0.25),
                            //     offset: Offset(0,4),
                            //     blurRadius: 4
                            // )],
                            image : DecorationImage(
                                image: AssetImage('assets/images/camera/Rectangle68.png'),
                                fit: BoxFit.contain
                            ),
                        )
                            )
                            ),Positioned(
                              top: 87,
                              left: 32,
                              child: Container(
                              width: 74,
                              height: 28,
                              decoration: BoxDecoration(
                            //     boxShadow : [BoxShadow(
                            //     color: Color.fromRGBO(0, 0, 0, 0.25),
                            //     offset: Offset(0,4),
                            //     blurRadius: 4
                            // )],
                            image : DecorationImage(
                                image: AssetImage('assets/images/camera/Rectangle70.png'),
                                fit: BoxFit.contain
                            ),
                        )
                            )
                            ),Positioned(
                              top: 16,
                              left: 51,
                              child: Container(
                              width: 37,
                              height: 25,
                              decoration: BoxDecoration(
                            //     boxShadow : [BoxShadow(
                            //     color: Color.fromRGBO(0, 0, 0, 0.25),
                            //     offset: Offset(0,4),
                            //     blurRadius: 4
                            // )],
                            image : DecorationImage(
                                image: AssetImage('assets/images/camera/Rectangle69.png'),
                                fit: BoxFit.contain
                            ),
                        )
                            )
                            ),Positioned(
                              top: 35,
                              left: 91,
                              child: Container(
                              width: 30,
                              height: 62,
                              decoration: BoxDecoration(
                            //     boxShadow : [BoxShadow(
                            //     color: Color.fromRGBO(0, 0, 0, 0.25),
                            //     offset: Offset(0,4),
                            //     blurRadius: 4
                            // )],
                            image : DecorationImage(
                                image: AssetImage('assets/images/camera/Rectangle71.png'),
                                fit: BoxFit.contain
                            ),
                        )
                            )
                            ),
                              ]
                            )
                          )
                            ),
                            //call police button
                            Positioned(
                             top:433,// top: 483,
                             left:28,// left: 232,
                              child: Container(
                                  width: 152,
                                  height: 79,
                                  
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        top: 0,
                                        left: 88,
                                        child: Container(
                                        width: 64,
                                        height: 79,
                                        decoration: BoxDecoration(
                                          borderRadius : BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16),
                                            bottomLeft: Radius.circular(16),
                                            bottomRight: Radius.circular(16),
                                          ),
                                      color : Color.fromRGBO(242, 237, 234, 1),
                                              )
                                                  )
                                                  ),
                                  
                                    Positioned(
                                      top: 0,
                                      left: 7,
                                      child: Container(
                                      width: 75,
                                      height: 79,
                                      decoration: BoxDecoration(
                                        borderRadius : BorderRadius.only(
                                          topLeft: Radius.circular(16),
                                          topRight: Radius.circular(16),
                                          bottomLeft: Radius.circular(16),
                                          bottomRight: Radius.circular(16),
                                        ),
                                    color : Color.fromRGBO(242, 237, 234, 1),
                                          )
                                              )
                                              ),
                                  Positioned(
                                    top: 15,
                                    left: 12,
                                    child: Text('Replay', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(75, 82, 82, 1),
                                    fontFamily: 'Roboto',
                                    fontSize: 13,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                  ),)
                                  ),Positioned(
                                    top: 22,
                                    left: 92,
                                    child: Text('Call Police', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(75, 82, 82, 1),
                                    fontFamily: 'Roboto',
                                    fontSize: 13,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                  ),)
                                  ),
                                    ]
                                  )// police stack
                                )
                                  ),
                              ]
                            )
                    )
        );
  }
}
