import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
        centerTitle: true,
      ),
      body: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context){
                  return MenuPage();
                },
              settings: RouteSettings(
                name: "menu",
                arguments: "",
              ),
              maintainState: false,
              fullscreenDialog: true,
            )).then((value) => print(value));
          }, 
          child: Text("登录")),
    );
  }
}


class MenuPage extends StatelessWidget {

  const MenuPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("菜单"),
        centerTitle: true,
      ),
      body: ElevatedButton(
          onPressed: (){
            Navigator.of(context).pop({
              "name": "flutter"
            });
          },
          child: Text("返回")
      ),
    );
  }
}
