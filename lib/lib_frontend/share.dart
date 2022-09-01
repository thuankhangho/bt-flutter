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
      home: const MyHomePage(title: 'Chia sẻ đến bạn bè'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class messageChat extends StatelessWidget {
  const messageChat(this.image, this.name, this.time, {super.key});

  final String image;
  final String name;
  final String time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: ShapeDecoration(
            shape: CircleBorder(),
            image: DecorationImage(
              image: NetworkImage('$image'),
              fit: BoxFit.cover,
            )),
      ),
      title: SizedBox(
        child: Row(children: [
          Text("$name",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Text("$time",
                style: TextStyle(
                  fontSize: 12,
                )),
          )
        ]),
      ),
      trailing: ElevatedButton(
        child: Text(
          "Gửi",
        ),
        onPressed: ()=>showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Chia sẻ đến bạn bè thành công'),
            content: const Text('Cảm ơn vì đã đưa sản phẩm của chúng tôi cho nhiều người dùng biết hơn!'),
            actions: <Widget>[
              // TextButton(
              //   onPressed: () => Navigator.pop(context, 'Hủy'),
              //   child: const Text('Hủy'),
              // ),
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              messageChat(
                  "https://ebudezain.com/upload/images/flutter/flutter12.png",
                  "Laurel",
                  "20:18",
              ),
              messageChat(
                  "https://ebudezain.com/upload/images/flutter/flutter12.png",
                  "Tracy",
                  "19:22",
              ),
              messageChat(
                  "https://ebudezain.com/upload/images/flutter/flutter12.png",
                  "Claire",
                  "14:34",
              ),
              messageChat(
                  "https://ebudezain.com/upload/images/flutter/flutter12.png",
                  "Joe",
                  "11:05",
              ),
              messageChat(
                  "https://ebudezain.com/upload/images/flutter/flutter12.png",
                  "Mark",
                  "09:46",
              ),
              messageChat(
                  "https://ebudezain.com/upload/images/flutter/flutter12.png",
                  "Williams",
                  "08:15",
              ),
            ],
          ),
        ));
  }
}
