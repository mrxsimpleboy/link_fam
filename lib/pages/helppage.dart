import 'package:flutter/material.dart';
import '../widget/nav-drawer.dart';

class HelpsWidget extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
            return  Scaffold(
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
                backgroundColor: Color(0xFFFFF9F6),
                body:
                    Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
            /////////////////////////////////////////////////////////////////////////////////////////
            ///           
                          //help/////////////////////////////////////////////////  
                          
                          Container(
                                        // top: MediaQuery.of(context).size.height*0.1,
                                        // left: MediaQuery.of(context).size.width*0.2,
                                        child: Container(
                                        width: 130,
                                        height: 75,
                                        decoration: BoxDecoration(
                                        
                                          image : DecorationImage(
                                              image: AssetImage('assets/images/help/Help1.png'),
                                              fit: BoxFit.contain
                                            ),
                                          )
                                        )
                          ),
                          Container(
                                // child: Stack(
                                //   children: <Widget>[
                                    ////////draw outline///////////////////////////////////////  
                                    // Positioned(
                                    //   top: MediaQuery.of(context).size.height*0.3,
                                    //   left: MediaQuery.of(context).size.width*0.1,
                                    //   child: Container(
                                              width: 373,
                                              height: 357,
                                              
                                              child: Stack(
                                                children: <Widget>[
                                                  Positioned(
                                                    top: 0,
                                                    left: 0,
                                                    child: Container(
                                                    width: 373,
                                                    height: 357,
                                                    decoration: BoxDecoration(
                                                      color : Color.fromRGBO(247, 221, 191, 1),
                                                                            )
                                                                    )
                                                ),
                                                Positioned(
                                                top: 8,
                                                left: 17,
                                                child: Container(
                                                width: 338,
                                                height: 340,
                                                decoration: BoxDecoration(
                                                  color : Color.fromRGBO(255, 249, 246, 1),
                                                                          )
                                                                )
                                                ),
                                                Positioned(
                                                top: 42,
                                                left: 100,
                                                child: Text('UserName1', textAlign: TextAlign.center, style: TextStyle(
                                                color: Color.fromRGBO(52, 59, 59, 1),
                                                fontFamily: 'Roboto',
                                                fontSize: 14,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                                  ),)
                                                ),
                                                Positioned(
                                                top: 86,
                                                left: 49,
                                                child: Text('Need:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
                                                  +'Looking for: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
                                                  +'Location: Sai Kung', textAlign: TextAlign.left, style: TextStyle(
                                                color: Color.fromRGBO(74, 82, 81, 1),
                                                fontFamily: 'Roboto',
                                                fontSize: 14,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                                  ),)
                                                ),
                                                //////draw circle///////
                                                Positioned(
                                                  top: 32,
                                                  left: 49,
                                                  child: Container(
                                                  width: 51,
                                                  height: 47,
                                                  decoration: BoxDecoration(
                                                    color : Color.fromRGBO(196, 196, 196, 1),//grey color
                                                    borderRadius : BorderRadius.all(Radius.elliptical(51, 47)),
                                                                          )
                                                                  )
                                                ),

                                    //////////////////////////////////////////////
                                              ]//stack outline widget
                                            )
                                    //       )
                                    // ),//outline finished
                                    ////////////////////////////////////////////////////////////////
                                  
                                    /////////////////////////////////////////////////////
                                      
                                    
                            //     ]//stack help outline widget
                            // )
                          ), //stack help container
                          // //////////////////////////////////////////////////////////////
                          // ////////////////////////////////////////////////////////////////
                          ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width*0.5,
                              height: MediaQuery.of(context).size.height*0.2,
                              child: ElevatedButton(
                                child: Text('back', textAlign: TextAlign.center) ,
                                style: ElevatedButton.styleFrom(
                                      primary: Color.fromRGBO(228, 251, 249, 1),
                                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                      textStyle: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                      shape: StadiumBorder()),
                                onPressed: () {
                                  Navigator.pop(
                                    context
                                    //MaterialPageRoute(builder: (context) => IndexPage()),
                                        );
                                      },//button
                                    )
                                  ),
                          // //////////////////////////////////////////////////////////////
                        ]
                    )
                  )
                  // ///////////////////column container//////////////////////////////////
            );
  }
}
