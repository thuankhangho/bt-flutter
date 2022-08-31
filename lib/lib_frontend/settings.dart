import 'package:flutter/material.dart';

class LineBoard extends StatelessWidget {
  const LineBoard(this.icon, this.title, {super.key});
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
          title: Text(
            title,
          ),
          selected: true,
        ),
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Lỗi'),
            content: const Text('Tính năng hiện chưa cập nhật!'),
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
          LineBoard(Icons.shopping_cart, "Đăng ký thành viên VIP"),
          LineBoard(Icons.settings, "Kiểm tra dữ liệu offline"),
          LineBoard(Icons.wechat_rounded, "Góp ý"),
          LineBoard(Icons.error_rounded, "Báo lỗi"),
          LineBoard(Icons.security, "Chính sách bảo mật"),
          LineBoard(Icons.thumb_up, "Đánh giá ứng dụng"),
          LineBoard(Icons.share, "Chia sẻ"),
          LineBoard(Icons.question_mark, "Câu hỏi thường gặp"),
          LineBoard(Icons.info, "Thông tin về ứng dụng"),
        ],
      ),
    );
  }
}
