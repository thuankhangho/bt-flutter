import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Center(
            child: Image.network(
                'https://ebudezain.com/upload/images/flutter/flutter12.png',
                height: 80,
                width: 200),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
              onSaved: (String? value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
                onSaved: (String? value) {},
                validator: (String? value) {}),
          ),
          Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text("Forgot Password",
                      style: TextStyle(
                        color: Colors.blue[500],
                      )))),
          SizedBox(
            height: 60,
            width: 200,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.blue[500],
              ),
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Center(
                  child: TextButton(
                      onPressed: () {},
                      child: Text("Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )))),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "New User? Create Account",
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                      textAlign: TextAlign.justify,
                    ))),
          )
        ],
      ),
    );
  }
}
