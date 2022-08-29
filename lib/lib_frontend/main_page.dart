import 'package:flutter/material.dart';
import 'your_dictionary.dart';
import 'history.dart';
import 'login.dart';
import 'settings.dart';

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

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Từ điển Flutter"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(children: <Widget>[
              Container(
                color: Colors.blue,
                height: 70,
              ),
              Center(
                child: Container(
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusColor: Colors.blue,
                      hintText: "Tra từ",
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
                      // suffixIcon: Icon(Icons.mic),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    onSaved: (String? value) {},
                    // style: TextStyle(
                    //   color: Colors.white,
                    // ),
                  ),
                ),
              )
            ]),
            LineBoard(Icons.star, "Từ đã lưu", () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => YourDictionary()));
            }),
            LineBoard(Icons.settings, "Cài đặt", () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            }),
            LineBoard(Icons.refresh, "Lịch sử tra từ", () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => History()));
            }),
            // LineBoard(Icons.smartphone, "Ứng dụng học Tiếng Anh khác"),
            LineBoard(Icons.person, "Đăng nhập", () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LogIn()));
            }),
          ],
        ),
      ),
    );
  }
}
