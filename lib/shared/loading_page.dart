import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatelessWidget {
  final String prompt;
  LoadingPage({this.prompt});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loading page"),
        backgroundColor: Color.fromRGBO(234, 218, 209, 1.0),
      ),
      body: Container(
        color: Color(0xFFFFF9F6),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                prompt,
                style: TextStyle(fontSize: 20),
              ),
              SpinKitRing(
                color: Colors.yellow[800],
                size: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
