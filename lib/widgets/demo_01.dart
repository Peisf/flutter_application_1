import 'package:flutter/material.dart';

// class TextDemo extends StatelessWidget {
//   const TextDemo({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       child: Text(
//         "文本" *20,
//         maxLines: 1,
//         overflow: TextOverflow.ellipsis,
//         textDirection: TextDirection.ltr,
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: (){}, child: Text("漂浮按钮")),
        TextButton(onPressed: (){}, child: Text("扁平按钮")),
        TextButton.icon(onPressed: (){}, icon: Icon(Icons.add), label: Text("data")),
        OutlinedButton(onPressed: (){}, child: Text("OutLinedButton")),
      ],
    );
  }
}

class ImageIconDemo extends StatelessWidget {
  const ImageIconDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.add),
        IconButton(onPressed: (){}, icon: Icon(Icons.home))
       ],
    );
  }
}

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
    return Column(
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
    );
  }
}

class ProgressDemo extends StatelessWidget {
  const ProgressDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class ClickDemo extends StatelessWidget {
  const ClickDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tag");
      },
      onDoubleTap: (){
        print("double tag");
      },
      child: Text("data"),
    );
  }
}

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
    return Form(
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
        ));
  }
}
