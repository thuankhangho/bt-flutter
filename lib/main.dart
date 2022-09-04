import 'package:flutter/material.dart';
import 'package:flutter_app/lib_frontend/login.dart';
import 'package:flutter_app/models/user.dart';
import 'package:flutter_app/services/auth.dart';
import 'package:flutter_app/wrapper.dart';
import 'lib_frontend/main_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StreamProvider<DictUser?>.value(
        value: AuthService().user,
        initialData: null,
        child: MaterialApp(debugShowCheckedModeBanner: false, home: Wrapper()));
  }
}
