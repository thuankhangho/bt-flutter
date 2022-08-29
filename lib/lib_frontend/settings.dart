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
        primarySwatch: Colors.lightBlue,
        brightness: Brightness.light,
      ),
      home: const MyHomePage(title: 'Settings'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back), 
          color: Colors.white,
          onPressed:(){},
          iconSize: 25,
        ),
        title: Text(widget.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          )
        ),
      ),
      body: Column(
        children: [
          lineBoard(Icons.shopping_cart,"Đăng ký thành viên VIP"),
          lineBoard(Icons.settings,"Kiểm tra dữ liệu offline"),
          lineBoard(Icons.wechat_rounded,"Góp ý"),
          lineBoard(Icons.error_rounded,"Báo lỗi"),
          lineBoard(Icons.security,"Chính sách bảo mật"),
          lineBoard(Icons.thumb_up,"Đánh giá 5*"),
          lineBoard(Icons.share,"Chia sẻ đến bạn bè"),
          lineBoard(Icons.question_mark,"Những câu hỏi thường gặp"),
          lineBoard(Icons.info,"Thông tin"),
        ],
      ),
    );
  }
}
