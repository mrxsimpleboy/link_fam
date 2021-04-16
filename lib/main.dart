import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:practice_carousel/models/user.dart';
import 'package:practice_carousel/services/auth.dart';
import 'package:practice_carousel/shared/error_page.dart';
import 'package:practice_carousel/shared/loading_page.dart';
import 'package:provider/provider.dart';
import './pages/index_page.dart';
import './pages/login.dart';
import './pages/profile.dart';
import './pages/helppage.dart';
import './pages/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //delay for debugging
  final Future<FirebaseApp> _initialization =
      Future.delayed(Duration(seconds: 2), () => Firebase.initializeApp());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textButtonTheme: TextButtonThemeData(
              style:
                  TextButton.styleFrom(primary: Colors.lightBlueAccent[100]))),
      home: FutureBuilder(
          future: _initialization,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return ErrorPage();
            } else if (snapshot.connectionState == ConnectionState.done) {
              return StreamProvider<AppUser>.value(
                  value: AuthService().user,
                  initialData: AppUser(uid: ''),
                  child: MaterialApp(
                    initialRoute: '/login',
                    routes: <String, WidgetBuilder>{
                      '/': (context) => LoginpageWidget(),
                      '/login': (context) => LoginpageWidget(),
                      '/profile': (context) => ProfileWidget(),
                      '/mainscreen': (context) => MainscreenWidget(),
                      '/index': (context) => IndexPage(),
                      '/help': (context) => HelpsWidget(),
                    },
                  ));
            } else {
              return LoadingPage(prompt: 'Connecting to server');
            }
          }),
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Link_fam.',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.pink.shade50,
//       ),
//       home: LoginpageWidget(),
//     );
//   }
// }
