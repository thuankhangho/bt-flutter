import 'package:flutter/material.dart';

class Opinion extends StatelessWidget {
  const Opinion({Key? key}) : super(key: key);

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
          title: Text("Báo lỗi & Góp ý"),
        ),
        body: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: "Báo lỗi & Góp ý",
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
