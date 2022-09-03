import 'package:flutter/material.dart';
import 'package:flutter_app/lib_frontend/login.dart';
import 'package:flutter_app/models/user.dart';
import 'lib_frontend/main_page.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<DictUser?>(context);
    if (user == null) {
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LogIn(),
      );
    }
    return MaterialApp(
      title: 'Từ điển Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}
