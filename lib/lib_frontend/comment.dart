import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  bool _isStar = false;

  var _star1 = Colors.grey;
  var _star2 = Colors.grey;
  var _star3 = Colors.grey;
  var _star4 = Colors.grey;
  var _star5 = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          title: Text("Đăng nhập"),
        ),
        body: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: "Bình luận",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Color.fromARGB(255, 0, 16, 241)))),
              validator: (String? value) {},
            ),
            Center(
                child: Row(
              children: [
                IconButton(
                    color: _star1,
                    onPressed: () {
                      setState(() {
                        _star1 = Colors.yellow;
                        _star2 = Colors.grey;
                        _star3 = Colors.grey;
                        _star4 = Colors.grey;
                        _star5 = Colors.grey;
                      });
                    },
                    icon: Icon(Icons.star)),
                IconButton(
                  color: _star2,
                    onPressed: () {
                      setState(() {
                        _star1 = Colors.yellow;
                        _star2 = Colors.yellow;
                        _star3 = Colors.grey;
                        _star4 = Colors.grey;
                        _star5 = Colors.grey;
                      });
                    }, 
                    icon: Icon(Icons.star)),
                IconButton(
                  color: _star3,
                    onPressed: () {
                      setState(() {
                        _star1 = Colors.yellow;
                        _star2 = Colors.yellow;
                        _star3 = Colors.yellow;
                        _star4 = Colors.grey;
                        _star5 = Colors.grey;
                      });
                    },
                    icon: Icon(Icons.star)),
                IconButton(
                  color: _star4,
                    onPressed: () {
                      setState(() {
                        _star1 = Colors.yellow;
                        _star2 = Colors.yellow;
                        _star3 = Colors.yellow;
                        _star4 = Colors.yellow;
                        _star5 = Colors.grey;
                      });
                    },
                    icon: Icon(Icons.star)),
                IconButton(
                  color: _star5,
                    onPressed: () {
                      setState(() {
                        _star1 = Colors.yellow;
                        _star2 = Colors.yellow;
                        _star3 = Colors.yellow;
                        _star4 = Colors.yellow;
                        _star5 = Colors.yellow;
                      });
                    },
                    icon: Icon(Icons.star)),
              ],
            )),
            ElevatedButton(onPressed: () {}, child: Text("Gửi"))
          ],
        ));
  }
}
