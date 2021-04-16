import 'package:flutter/material.dart';
import '../widget/nav-drawer.dart';

class CommunicationWidget extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
            return 
  Scaffold(
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
      //backgroundColor: Color.fromRGBO(251, 233, 224, 1),
      backgroundColor: Color(0xFFFFF9F6),
      body:
        Row(
          children: <Widget> [
            /////////////////////////////////////////////////////////////////////////////////////////
          Container(
            width: MediaQuery.of(context).size.width*0.3,//414.0000305175781,
            height: MediaQuery.of(context).size.height*0.8,//896.0000610351562,
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                  Container(
                    width: 51,
                    height: 51,
                    child: new Image.asset('assets/helper/helper1.png'),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(196, 196, 196, 1),
                      shape: BoxShape.circle,
                      
                    ),
                  ),
                  Container(
                    width: 51,
                    height: 51,
                    decoration: BoxDecoration(
                      color: Color(
                        0xffc4c4c4,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 51,
                    height: 51,
                    decoration: BoxDecoration(
                      color: Color(
                        0xffc4c4c4,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 51,
                    height: 51,
                    decoration: BoxDecoration(
                      color: Color(
                        0xffc4c4c4,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 51,
                    height: 51,
                    decoration: BoxDecoration(
                      color: Color(
                        0xffc4c4c4,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 51,
                    height: 51,
                    decoration: BoxDecoration(
                      color: Color(
                        0xffc4c4c4,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),


                  /////////////////////////////////////////////////////////////////////////////////////////
                  SizedBox(
                    child: Text(
                      "End of Page",
                      style: TextStyle(
                        color: Color(
                          0xff4a5251,
                        ),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                      ),
                    ),
                    width: 167,
                    height: 36,
                  ),//sizebox
                  /////////////////////////////////////////////////////////////////////////////////////////
                ]
              ),//container
            ),
            /////////////////////////////////////////////////////////////////////////////////////////

            //////////////////////////////////////////////////////////////////////
            Container(
            width: MediaQuery.of(context).size.width*0.7,//414.0000305175781,
            height: MediaQuery.of(context).size.height*0.8,//896.0000610351562,
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                
                Container(
                  child: SizedBox(
                    child: Text(
                      "UserName1\n\nSee you later!",
                      style: TextStyle(
                        color: Color(
                          0xff4a5251,
                        ),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                      ),
                    ),
                    width: MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height*0.1,
                  ),
                ),
                Container(
                  child: SizedBox(
                    child: Text(
                      "UserName5\n\nHi!",
                      style: TextStyle(
                        color: Color(
                          0xff4a5251,
                        ),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                      ),
                    ),
                    width: MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height*0.1,
                  ),
                ),
                Container(
                  child: SizedBox(
                    child: Text(
                      "UserName4\n\nGreat! Thanks!",
                      style: TextStyle(
                        color: Color(
                          0xff4a5251,
                        ),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                      ),
                    ),
                    width: MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height*0.1,
                  ),
                ),
                Container(
                  child: SizedBox(
                    child: Text(
                      "UserName6\n\nThanks for you help!",
                      style: TextStyle(
                        color: Color(
                          0xff4a5251,
                        ),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                      ),
                    ),
                    width: MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height*0.1,
                  ),
                ),
                Container(
                  child: SizedBox(
                    child: Text(
                      "UserName3\n\nEmoji",
                      style: TextStyle(
                        color: Color(
                          0xff4a5251,
                        ),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                      ),
                    ),
                    width: MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height*0.1,
                  ),
                ),
                Container(
                  child: SizedBox(
                    child: Text(
                      "UserName2\n\nThere’s so much things to ...",
                      style: TextStyle(
                        color: Color(
                          0xff4a5251,
                        ),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                      ),
                    ),
                    width: MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height*0.1,
                  ),
                ),

                /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                Container(),
              ],//widget
            ),//column
          ),
          
      /// image content of "Bottom"
      // Image.network(
      //   "bridged://url-reservation/image-hosting/76:50",
      //   width: 415,
      //   height: 110,
      //   fit: BoxFit.cover,
      // ),
      ]
    )
  );
  
  //width: MediaQuery.of(context).size.width,
  // decoration: BoxDecoration(
  //   color: Color(
  //     0xfffff9f6,
  //   ),
  // );
  
  }
}