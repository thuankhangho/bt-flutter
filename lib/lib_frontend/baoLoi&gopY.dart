import 'package:flutter/material.dart';

class BaoLoiVaGopY extends StatelessWidget {
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
                  hintText: "Báo Lỗi & Góp Ý",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Color.fromARGB(255, 0, 16, 241)))),
              validator: (String? value) {},
            ),
            ElevatedButton(onPressed: () {}, child: Text("Gửi"))
          ],
        ));
  }
}
