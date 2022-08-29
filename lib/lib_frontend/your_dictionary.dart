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
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Từ của bạn'),
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {},
              ),
              title: Text(widget.title),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                )
              ],
              bottom: TabBar(
                  // indicator: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(50), // Creates border
                  //   color: Colors.red,
                  // ),
                  indicatorWeight: 7,
                  tabs: [
                    Text(
                      "Từ đã lưu",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Từ đã học",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ])),
          body: TabBarView(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextFormField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            focusColor: Colors.blue,
                            hintText: "Tìm từ trong thư mục",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.search),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                          ),
                          onSaved: (String? value) {},
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            height: 500,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                              // borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: Text(
                                    "Chưa có từ vựng được lưu trong thư mục này")))
                      ],
                    ),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            focusColor: Colors.blue,
                            hintText: "Tìm từ trong thư mục",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.search),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                          ),
                          onSaved: (String? value) {},
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            height: 500,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                              // borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: Text(
                                    "Chưa có từ vựng được lưu trong thư mục này")))
                      ],
                    ),
                  )),
            ],
          )),
    );
  }
}
