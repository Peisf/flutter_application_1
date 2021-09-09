import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/demo_02.dart';
import 'package:flutter_application_1/widgets/button_navigator.dart';
import 'package:flutter_application_1/widgets/listview_demo.dart';
import 'package:flutter_application_1/widgets/gridview_demo.dart';
import 'package:flutter_application_1/widgets/alert_dialog_demo.dart';
import 'package:flutter_application_1/widgets/table_demo.dart';
import 'package:flutter_application_1/widgets/card-demo.dart';
import 'package:flutter_application_1/widgets/demo_05.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   "/": (context) => LoginPage(),
      // },
      // onGenerateRoute: (s){
      //   print(s.name);
      // },
      home: Demo05()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
        centerTitle: true,
      ),
      body: CountPage(),
    );
  }
}

class CountPage extends StatefulWidget {
  const CountPage({Key? key}) : super(key: key);

  @override
  _CountPageState createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$count"),
        ElevatedButton(onPressed: (){
          setState(() {
            count++;
          });
        }, child: Text('点击'))
      ],
    );
  }
}

