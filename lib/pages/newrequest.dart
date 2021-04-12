        import 'package:flutter/material.dart';
        import '../widget/nav-drawer.dart';
        import 'helppage.dart';
        import 'viewhelperpage.dart';
        import 'communication.dart';

        class NewrequestWidget extends StatefulWidget {
        @override
        _NewrequestWidgetState createState() => _NewrequestWidgetState();
        }
        
        class _NewrequestWidgetState extends State<NewrequestWidget> {
        @override
        Widget build(BuildContext context) {
        //////////////////////////////////////////////////////////////////////
        ///
        ///
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
//                backgroundColor: Color.fromRGBO(251, 233, 224, 1),
                backgroundColor: Color(0xFFFFF9F6),
                body:
                  // Row(
                  //   children: <Widget> [
            /////////////////////////////////////////////////////////////////////////////////////////
                    Container(
                      width: MediaQuery.of(context).size.width*0.98,//414.0000305175781,
                      height: MediaQuery.of(context).size.height*0.8,//896.0000610351562,
                      
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,//MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
        /////////////////////////////////////////////////////////////////////
                        // Wrap(
                        //   direction: Axis.vertical, // We have to declare Axis.vertical, otherwise by default widget are drawn in horizontal order
                        //     //spacing: 20, // Add spacing one time which is same for all other widgets in the children list
                        //     runSpacing: 20,
                        //     children: <Widget>[
                            ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width*0.5,
                              height: MediaQuery.of(context).size.height*0.2,
                              child: ElevatedButton(
                                child: Text('Add New Post', textAlign: TextAlign.center) ,
                                style: ElevatedButton.styleFrom(
                                      primary: Color(0xFFF3A188),//Color.fromRGBO(74, 82, 81, 1),
                                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold),
                                      shape: StadiumBorder()),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => HelpsWidget()),);
                                              },//button
                                      )
                                    ),    
                              
                              //////////////////////////
                              SizedBox(height: 10),
                              ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width*0.5,
                              height: MediaQuery.of(context).size.height*0.2,
                              child: ElevatedButton(
                                child: Text('Search Helper', textAlign: TextAlign.center) ,
                                style: ElevatedButton.styleFrom(
                                      primary: Color(0xFFF7DDBF),//Color.fromRGBO(74, 82, 81, 1),
                                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold),
                                      shape: StadiumBorder()),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ViewHelpsWidget()),);
                                              },//button
                                      )
                                    ),    
                              /////////
                              SizedBox(height: 10),
                              ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width*0.5,
                              height: MediaQuery.of(context).size.height*0.2,
                              child: ElevatedButton(
                                child: Text('Add New Request', textAlign: TextAlign.center) ,
                                style: ElevatedButton.styleFrom(
                                      primary: Color(0xFFEDF4F3),//Color.fromRGBO(74, 82, 81, 1),
                                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold),
                                      shape: StadiumBorder()),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => CommunicationWidget()),);
                                              },//button
                                      )
                                    ),           
                              ]
                            )
         //////////////////////
            //]//widget
         // )//column
        )
      );
        //////////////////////
    }
  }
