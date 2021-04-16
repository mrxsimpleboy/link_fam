import 'package:flutter/material.dart';
import '../widget/nav-drawer.dart';
import './index_page.dart';

class ViewHelpsWidget extends StatelessWidget {
  get floatingActionButton => null;

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
                Center(
                  child:
                   Container(
                    width: MediaQuery.of(context).size.width*0.98,
                    height: MediaQuery.of(context).size.height*0.6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        ),
                      child:
                          PageView(
                            children: <Widget>[
                              makePage(
                                page: 1,
                                image: 'mom1',
                                title: "Mary Helper",
                                description:
                                    "have 1 year experience, take care baby\n 50 meter",
                              ),
                              makePage(
                                page: 2,
                                image: 'mom2',
                                title: "Ann Helper",
                                description:
                                    "new helper, with heart care\n 200 meter",
                              ),
                              makePage(
                                page: 3,
                                image: 'mom3',
                                title: "jone Helper",
                                description:
                                    "Nice and free to help\n 1000 meter",
                              )
                            ],
                          ),
                        ),
                ),
                
                
                floatingActionButton: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      child: Icon(
                        Icons.check_box_rounded
                      ),
                      backgroundColor: Colors.green,
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IndexPage()));
                      },
                      heroTag: null,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FloatingActionButton(           
                      child: Icon(
                        Icons.cancel_sharp
                      ),
                      backgroundColor: Colors.red,
                      onPressed: (){
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IndexPage()));
                      },
                      heroTag: null,
                    )
                  ]
                )
                
                
                        
                        
                        //////
                        
                        // 
                              ///////////
                             ///
                
                //add column
                // ButtonTheme(
                //           minWidth: MediaQuery.of(context).size.width*0.5,
                //           height: MediaQuery.of(context).size.height*0.2,
                //           child: ElevatedButton(
                //             child: Text('back', textAlign: TextAlign.center) ,
                //             style: ElevatedButton.styleFrom(
                //                   primary: Color.fromRGBO(228, 251, 249, 1),
                //                   padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                //                   textStyle: TextStyle(
                //                       fontSize: 30,
                //                       fontWeight: FontWeight.bold),
                //                   shape: StadiumBorder()),
                //             onPressed: () {
                //               Navigator.pop(
                //                 context
                //                 //MaterialPageRoute(builder: (context) => IndexPage()),
                //                     );
                //                   },//button
                //                 )
                //               ),
              );
            }

            Widget makePage({image, title, page, description}) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/mom/$image.jpg'),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.7),
                        Colors.black.withOpacity(.2)
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              page.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "/3",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                title,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                  ),
                                  Text(
                                    "5.0",
                                    style: TextStyle(
                                      color: Colors.white60,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                description,
                                style: TextStyle(
                                    color: Colors.white54, height: 2.0, fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
                  // ///////////////////column container//////////////////////////////////
            
  }
}
