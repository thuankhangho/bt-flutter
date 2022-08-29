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
        onPressed: () {},
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Dictionary"),
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
            LineBoard(Icons.star, "Từ của bạn"),
            LineBoard(Icons.person, "Tài khoản của bạn"),
            LineBoard(Icons.refresh, "Từ đã tra"),
            LineBoard(Icons.smartphone, "Ứng dụng học Tiếng Anh khác"),
            LineBoard(Icons.settings, "Cài đặt"),
          ],
        ),
      ),
    );
  }
}
