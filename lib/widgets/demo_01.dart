import 'package:flutter/material.dart';

/// 文本类型
class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本"),
      ),
      body: Container(
        width: double.infinity,
        child: Text(
          "文本" *20,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

/// 按钮
class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){}, child: Text("漂浮按钮")),
          TextButton(onPressed: (){}, child: Text("扁平按钮")),
          TextButton.icon(onPressed: (){}, icon: Icon(Icons.add), label: Text("data")),
          OutlinedButton(onPressed: (){}, child: Text("OutLinedButton")),
        ],
      ),
    );
  }
}
/// 图片icon
class ImageIconDemo extends StatelessWidget {
  const ImageIconDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("图片icon"),
      ),
      body: Column(
        children: [
          Icon(Icons.add),
          IconButton(onPressed: (){}, icon: Icon(Icons.home))
        ],
      ),
    );
  }
}
/// check 类型
class CheckDemo extends StatefulWidget {
  const CheckDemo({Key? key}) : super(key: key);

  @override
  _CheckDemoState createState() => _CheckDemoState();
}

class _CheckDemoState extends State<CheckDemo> {
  bool _check = false;
  bool _switch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Column(
        children: [
          Checkbox(value: _check, onChanged: (v){
            setState(() {
              _check= v!;
            });
          }),
          Switch(value: _switch, onChanged: (v){
            setState(() {
              _switch= v;
            });
          })
        ],
      ),
    );
  }
}
/// 进度
class ProgressDemo extends StatelessWidget {
  const ProgressDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("进度条"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            LinearProgressIndicator(
              value: .5,
              valueColor: AlwaysStoppedAnimation(Colors.yellow),
            ),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
/// 点击事件
class ClickDemo extends StatelessWidget {
  const ClickDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("点击事件"),
      ),
      body: GestureDetector(
        onTap: () { /// 单击
          print("tag");
        },
        onDoubleTap: (){ /// 双击
          print("double tag");
        },
        child: Text("data"),
      ),
    );
  }
}

/// 输入 验证
class InputDemo extends StatefulWidget {
  const InputDemo({Key? key}) : super(key: key);

  @override
  _InputDemoState createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {
  GlobalKey _key = GlobalKey<FormState>();
  TextEditingController _user = TextEditingController();
  TextEditingController _pass = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _user.dispose();
    _pass.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("input输入框"),
      ),
      body: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                controller: _user,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.add),
                  labelText: "账号",//.
                  hintText: "请输入账号",
                ),
                validator: (v) {
                  if (v == null || v.isEmpty) {
                    return "请输入账号";
                  }
                },
                textInputAction: TextInputAction.send,
                onFieldSubmitted: (v){
                  print("object");
                },
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: _pass,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.add),
                  labelText: "密码",
                  hintText: "请输入密码",
                ),
                validator: (v) {
                  if (v == null || v.length < 5) {
                    return "密码必须输入";
                  }
                },
                textInputAction: TextInputAction.send,
                obscureText: true,
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  print((_key.currentState as FormState).validate().toString());
                },
                child: Text("提交"),
                style: ButtonStyle(),
              )
            ],
          )),
    );
  }
}
