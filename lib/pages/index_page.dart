import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'camera.dart';
import 'main_screen.dart';
import 'newrequest.dart';
import 'community.dart';
import 'communication.dart';
import 'chat.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomTabs=[
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      label: '首頁',
      backgroundColor: Color.fromRGBO(234, 218, 209, 1.0)
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search),
      label: '助手聊天',
      backgroundColor: Color.fromRGBO(234, 218, 209, 1.0)
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.volunteer_activism),
      label: ('援助'),
      backgroundColor: Color.fromRGBO(234, 218, 209, 1.0)
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.camera),
      label: ('直播'),
      backgroundColor: Color.fromRGBO(234, 218, 209, 1.0)
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      label: ('會員討論區'),
      backgroundColor: Color.fromRGBO(234, 218, 209, 1.0)
    )
  ];

  final List tabBodies = [
    MainscreenWidget(),
    ChatWidget(),//CommunicationWidget(),
    NewrequestWidget(),
    CameraWidget(),
    CommunitysearchWidget()
  ];

  int currentIndex = 0;
  var currentPage;

  @override
    void initState() {
      currentPage=tabBodies[currentIndex];
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      //////////////////////////////////////////////////////////////      
          bottomNavigationBar: Container(                                             
            decoration: BoxDecoration(                                                   
              borderRadius: BorderRadius.only(                                           
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),            
              // boxShadow: [                                                               
              //   BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),       
              // ],                                                                         
            ),                                                                           
            child: ClipRRect(                                                            
              borderRadius: BorderRadius.only(                                           
              topLeft: Radius.circular(30.0),                                            
              topRight: Radius.circular(30.0),                                           
              ),                                                                         
              child: BottomNavigationBar(   
                  backgroundColor: Color.fromRGBO(234, 218, 209, 1.0),
                  // systemNavigationBarColor: Color.fromRGBO(245, 185, 167, 1.0),
                  type:BottomNavigationBarType.fixed,
                  currentIndex: currentIndex,
                  items: bottomTabs,
                  onTap: (index){
                    setState(() {
                      currentIndex=index;
                      currentPage=tabBodies[currentIndex];
                    });
                  },
                ),
            )
          ),
      body: currentPage,
    );
  }
}