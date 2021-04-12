import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widget/nav-drawer.dart';
import '../component/messagebox.dart';

class ChatWidget extends StatefulWidget {
  @override
  _ChatWidgetState createState() => _ChatWidgetState();
  }
  
class _ChatWidgetState extends State<ChatWidget> {
  @override

  final TextEditingController _chatController = new TextEditingController();
  final List<Widget> _message = [];   // 建立一個空陣列

  void _submitText(String text) {
    _chatController.clear();  // 清空controller資料
    setState(() {
     
     _message.insert(0, MessageBox(key: UniqueKey(), text:text)); // 把文字存入陣列0的位置
     // _message.insert(0, Container(child: Text(text), alignment: Alignment.centerRight)); // 把文字存入陣列0的位置
    });
  }
  @override
    Widget build(BuildContext context) {
    ///
    var card = new Container(
          // height: 0,  //设置高度
          child: new Card(
            color: Color(0xFFFFF9F6),
            elevation: 15.0,  //设置阴影
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),  //设置圆角
            child: new Column(  // card只能有一个widget，但这个widget内容可以包含其他的widget
              children: [
                new ListTile(
                  title: new Text('Request Sai Kung Helper',
                      style: new TextStyle(fontWeight: FontWeight.w500)),
                  subtitle: new Text('Request a Helper Today'),
                  leading: new Icon(
                    Icons.people,
                    color: Colors.grey[500],
                  ),
                ),
                
                new Divider(),
                new ListTile(
                  title: new Text('Karen\nEmoji',
                      style: new TextStyle(fontWeight: FontWeight.w500)),
                  subtitle: new Text('Auntie\nThere’s so much things to ...'),
                  leading: new Icon(
                    Icons.people_alt_sharp,
                    color: Colors.grey[500],
                  ),
                ),
                
                new Divider(),
                
              ],
        ),
      ),
    );
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
      //backgroundColor: Color.fromRGBO(251, 233, 224, 1),
      backgroundColor: Color(0xFFFFF9F6),
      body: Container(
        child: Column(
          children: <Widget>[
            
            SizedBox(
              width: MediaQuery.of(context).size.width*0.98,
              height: MediaQuery.of(context).size.height*0.1,
                  child: Row(
                    children:<Widget>[
                      Icon(CupertinoIcons.person_crop_circle ),
                      Text(
                        "    Hi there, Welcome To helper assisant",
                        //,\n we're happy to help with dosmetic service",
                        style: TextStyle(
                          color: Color(
                            0xff4a5251,
                          ),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                        ),
                      ),      
                    ]
                  )
            ),
                  
            
            //card,
            Expanded(
              child: ListView.builder(
                padding: new EdgeInsets.all(8.0),
                reverse: true,  // 加入reverse，讓它反轉
                itemBuilder: (context, index) => _message[index],
                itemCount: _message.length,
              ),
            ),
            Row(children: <Widget>[
              Expanded(  
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16.0),
                      border: OutlineInputBorder(),
                      hintText: 'Type something...'),
                      controller: _chatController,
                      onSubmitted: _submitText,  // 綁定事件給_submitText這個Function
                  ),
              ),
              IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () => _submitText(_chatController.text),
                  ),
                ],
              )
              
              
          ],
        
        ),
      )
    );

  }
}