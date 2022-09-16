import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  final _isStar = false;

  final _star1 = Colors.grey;
  final _star2 = Colors.grey;
  final _star3 = Colors.grey;
  final _star4 = Colors.grey;
  final _star5 = Colors.grey;

  const Comment({Key? key}) : super(key: key);

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
          title: Text("Đánh giá ứng dụng"),
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
                    onPressed: () {},
                    // onPressed: () {
                    //   setState(() {
                    //     _star1 = Colors.yellow;
                    //     _star2 = Colors.grey;
                    //     _star3 = Colors.grey;
                    //     _star4 = Colors.grey;
                    //     _star5 = Colors.grey;
                    //   });
                    // },
                    icon: Icon(Icons.star)),
                IconButton(
                    color: _star2,
                    onPressed: () {},
                    // onPressed: () {
                    //   setState(() {
                    //     _star1 = Colors.yellow;
                    //     _star2 = Colors.yellow;
                    //     _star3 = Colors.grey;
                    //     _star4 = Colors.grey;
                    //     _star5 = Colors.grey;
                    //   });
                    // },
                    icon: Icon(Icons.star)),
                IconButton(
                    color: _star3,
                    onPressed: () {},
                    // onPressed: () {
                    //   setState(() {
                    //     _star1 = Colors.yellow;
                    //     _star2 = Colors.yellow;
                    //     _star3 = Colors.yellow;
                    //     _star4 = Colors.grey;
                    //     _star5 = Colors.grey;
                    //   });
                    // },
                    icon: Icon(Icons.star)),
                IconButton(
                    color: _star4,
                    onPressed: () {},
                    // onPressed: () {
                    //   setState(() {
                    //     _star1 = Colors.yellow;
                    //     _star2 = Colors.yellow;
                    //     _star3 = Colors.yellow;
                    //     _star4 = Colors.yellow;
                    //     _star5 = Colors.grey;
                    //   });
                    // },
                    icon: Icon(Icons.star)),
                IconButton(
                    color: _star5,
                    onPressed: () {},
                    // onPressed: () {
                    //   setState(() {
                    //     _star1 = Colors.yellow;
                    //     _star2 = Colors.yellow;
                    //     _star3 = Colors.yellow;
                    //     _star4 = Colors.yellow;
                    //     _star5 = Colors.yellow;
                    //   });
                    // },
                    icon: Icon(Icons.star)),
              ],
            )),
            ElevatedButton(onPressed: () {}, child: Text("Gửi"))
          ],
        ));
  }
}
