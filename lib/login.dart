import 'package:flutter/material.dart';
import 'package:netflix/list.dart';

TextEditingController _user = TextEditingController();
TextEditingController _pass = TextEditingController();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String registedUser = 'Isabella';
  String registedPassword = 'igorbedon';
  String verificated = '';

  bool Logar(){
    if (_user.text == registedUser && _pass.text == registedPassword) {
      print('Correct credentials.');
      return true;

    } else {
      print('Incorrect credentials.');
      setState(() {
        verificated = 'Incorrect credentials.';
      });
      return false;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.network('https://upload.wikimedia.org/wikipedia/commons/1/10/Meta-image-netflix-symbol-black.png'),
          toolbarHeight: 150,
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body:
        Padding(padding: EdgeInsets.all(20), child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Login",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Nome de usuário',
                border: OutlineInputBorder(),
              ),
              controller: _user,
            ),

            TextField(
              decoration: InputDecoration(
                  hintText: 'Insira sua senha',
                  border: OutlineInputBorder()
              ),
              controller: _pass,
              obscureText: true,
            ),
            ElevatedButton(onPressed: (){
              if (Logar()) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ListPage()));
              };
            }, child: Icon(Icons.login))
          ],
        ),
        )
    );
  }
}
