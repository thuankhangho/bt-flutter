// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_app/screens/baoLoi&gopY.dart';
// import 'package:flutter_app/screens/login.dart';
// import 'package:flutter_app/screens/main_page.dart';
// import 'main.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_app/models/user.dart';

// class Wrapper extends StatelessWidget {
//   const Wrapper({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final user = Provider.of<DictUser?>(context);
//     if (user == null) {
//       return MaterialApp(
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: const LogIn(),
//       );
//     }
//     return MaterialApp(
//       title: 'Từ điển Flutter',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MainPage(),
//     );
//   }
// }
