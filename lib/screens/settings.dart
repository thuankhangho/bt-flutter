import 'package:flutter/material.dart';
import 'package:flutter_app/screens/baoLoi&gopY.dart';
import 'package:flutter_app/screens/comment.dart';
import 'package:flutter_app/screens/share.dart';

class LineBoard extends StatelessWidget {
  const LineBoard(this.icon, this.title, this.onPressed, {super.key});
  final IconData icon;
  final String title;
  final Function() onPressed;
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
          title: Text(
            title,
          ),
          selected: true,
        ),
        onPressed: onPressed,
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: 25,
        ),
        title: Text("Cài đặt",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            )),
      ),
      body: Column(
        children: [
          // LineBoard(Icons.shopping_cart, "Đăng ký thành viên VIP", () => {}),
          // LineBoard(Icons.settings, "Kiểm tra dữ liệu offline", () => {}),
          LineBoard(Icons.wechat_sharp, "Báo lỗi & góp ý", () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Opinion()));
          }),
          // LineBoard(Icons.security, "Chính sách bảo mật", () => {}),
          LineBoard(
            Icons.thumb_up,
            "Đánh giá ứng dụng",
            () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Comment()));
            },
          ),
          LineBoard(
            Icons.share,
            "Chia sẻ",
            () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Share()));
            },
          ),
          // LineBoard(Icons.question_mark, "Câu hỏi thường gặp", () => {}),
          // LineBoard(Icons.info, "Thông tin về ứng dụng", () => {}),
        ],
      ),
    );
  }
}
