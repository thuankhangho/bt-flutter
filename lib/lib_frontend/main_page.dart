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
      home: const MyHomePage(title: 'Dictionary'),
    );
  }
}

class lineBoard extends StatelessWidget {
  const lineBoard(this.icon, this.title,{super.key});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white, // background
          onPrimary: Colors.black, // foreground
        ),
        child: ListTile(
          leading: Icon(icon),
          title: Text(title,),
          selected: true,
        ),
        onPressed: (){},
      ),
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
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(children: <Widget>[
              Container(
                color: Colors.blue,
                height: 75,
              ),
              Center(
                child: Container(
                  width: 300,
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusColor: Colors.blue,
                      hintText: "Tra từ Anh - Việt",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      suffixIcon: Icon(Icons.mic),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    onSaved: (String? value) {},
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ]),
            lineBoard(Icons.star,"Từ của bạn"),
            lineBoard(Icons.person,"Tài khoản của bạn"),
            lineBoard(Icons.refresh,"Từ đã tra"),
            lineBoard(Icons.smartphone,"Ứng dụng học Tiếng Anh khác"),
            lineBoard(Icons.settings,"Cài đặt"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.search),
      ),
    );
  }
}
