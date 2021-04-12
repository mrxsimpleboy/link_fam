import 'package:flutter/material.dart';
import './index_page.dart';
import './main_screen.dart';

void paint( Size size) {
    Canvas canvas;
    var paint = Paint();
    paint.color = Colors.amber;
    paint.strokeWidth = 5;
    
    canvas.drawLine(
      Offset(0, size.height / 4),
      Offset(size.width*0.5, size.height / 4),
      paint,
    );

    paint.color = Colors.pink;
    paint.strokeWidth = 5;
    
    canvas.drawLine(
      Offset(50, size.height / 4),
      Offset(size.width, size.height / 4),
      paint,
    );
  }

class ProfileWidget extends StatelessWidget {
      final Offset _offset=Offset(200,0) ;
      
      
          @override
          Widget build(BuildContext context) {
          var _offsetwidth =MediaQuery.of(context).size.width;
          
            return Scaffold(
      backgroundColor: Color.fromRGBO(251, 233, 224, 1),
      body:
        Container(

        width: MediaQuery.of(context).size.width*0.8,
        height: MediaQuery.of(context).size.height*0.8,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          
          Row(  
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
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
              
            ]
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                    child: Stack(
                      children: <Widget>[
                      Text('Requestor Lv 2', textAlign: TextAlign.right) ,
                      CustomPaint(foregroundPainter: LinePainter(Offset(_offsetwidth*0.1,0),(Offset(_offsetwidth*0.2,0)),Colors.amber)),
                      CustomPaint(foregroundPainter: LinePainter(Offset(_offsetwidth*0.2,0),(Offset(_offsetwidth*0.6,0)),Colors.grey)),
                      ]
                  )
              ),
            ]
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                    child: Stack(
                      children: <Widget>[
                      Text('Helper Lv 2', textAlign: TextAlign.right) ,
                      CustomPaint(foregroundPainter: LinePainter(Offset(_offsetwidth*0.1,0),(Offset(_offsetwidth*0.2,0)),Colors.amber)),
                      CustomPaint(foregroundPainter: LinePainter(Offset(_offsetwidth*0.2,0),(Offset(_offsetwidth*0.6,0)),Colors.grey)),
                      ]
                  )
              ),
            ]
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Comment Review Star'),
              Icon(Icons.star, color: Colors.yellow[500]),
              Icon(Icons.star, color: Colors.yellow[500]),
              Icon(Icons.star, color: Colors.yellow[500]),
              Icon(Icons.star, color: Colors.grey),
              Icon(Icons.star, color: Colors.grey),
            ],
          ),
          
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   //crossAxisAlignment: CrossAxisAlignment.center,
          //   children: <Widget>[
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
                Text('Location', textAlign: TextAlign.left),
                Text('Contact Detail', textAlign: TextAlign.left),
                Text('Family Members', textAlign: TextAlign.left),
                Text(' ', textAlign: TextAlign.left),
                Text('Phone Authorization', textAlign: TextAlign.left),
                Text('ID card binding', textAlign: TextAlign.left),
                Text('Settings', textAlign: TextAlign.left),]
              ),
          //   ]
          // ),
          ButtonTheme(
            minWidth: MediaQuery.of(context).size.width*0.5,
            height: MediaQuery.of(context).size.height*0.2,
            child: ElevatedButton(
              child: Text('save', textAlign: TextAlign.center) ,
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
                  MaterialPageRoute(builder: (context) => IndexPage()),
                      );
                    },//button
                  )
                ),
            
          ]
        )
      )
    );
  }
}
class LinePainter extends CustomPainter {
  Paint _paint;
  Offset _offset;
  Offset _start;
  

  LinePainter(Offset start, Offset offset, Color color) {
    _offset = offset;
    _start = start;
    _paint = Paint()
      ..color = color
      ..strokeWidth = 8.0;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(_start, _offset, _paint);
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) {
    return true;
  }
}