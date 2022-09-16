import 'package:flutter/material.dart';
import 'create_account.dart';
import 'forgot_password.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

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
          Center(
              child: FlutterLogo(
            size: 150,
          )
              // child: Image.network(
              //     'https://ebudezain.com/upload/images/flutter/flutter12.png',
              //     height: 80,
              //     width: 200),
              ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
              validator: (String? value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Mật khẩu",
                  border: OutlineInputBorder(),
                )),
          ),
          Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassWord()));
                  },
                  child: Text("Quên mật khẩu?",
                      style: TextStyle(
                        color: Colors.blue[500],
                      )))),
          SizedBox(
            height: 60,
            width: 200,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.blue[500],
              ),
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Center(
                  child: TextButton(
                      onPressed: () {},
                      child: Text("Đăng nhập",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )))),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateAccount()));
                    },
                    child: Text(
                      "Đăng ký",
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                      textAlign: TextAlign.justify,
                    ))),
          )
        ],
      ),
    );
  }
}
