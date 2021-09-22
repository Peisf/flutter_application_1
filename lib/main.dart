import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/countProvider.dart';
import 'package:flutter_application_1/widgets/demo_01.dart';
import 'package:flutter_application_1/widgets/demo_02.dart';
import 'package:flutter_application_1/widgets/dio_demo.dart';
import 'package:flutter_application_1/widgets/navigator_demo.dart';
import 'package:flutter_application_1/widgets/button_navigator.dart';
import 'package:flutter_application_1/widgets/listview_demo.dart';
import 'package:flutter_application_1/widgets/gridview_demo.dart';
import 'package:flutter_application_1/widgets/alert_dialog_demo.dart';
import 'package:flutter_application_1/widgets/table_demo.dart';
import 'package:flutter_application_1/widgets/card-demo.dart';
import 'package:flutter_application_1/widgets/demo_05.dart';
import 'package:flutter_application_1/widgets/provider_demo.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CountProvider(),
        ),
      ],
      child: MyApp(),
    )

        // MyApp()
        );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "/": (context) => LoginPage(),
          "demo1": (context) => InputDemo(),
          "demo2": (context) => PageDemo(),
          "demo5": (context) => Demo05(),
          "bottomBar": (context) => BottomNavigatorBarDemo(),
          "listview": (context) => ListViewDemo(),
          "gridview": (context) => GridViewDemo(),
          "alertdialog": (context) => AlertDialogDemo(),
          "table": (context) => TableDemo(),
          "card": (context) => CardDemo(),
          "provider": (context) => ProviderDemo(),
          "provider2": (context) => ProviderDemoTwo(),
          "dio": (context) => DioDemo(),
        },
        initialRoute: "bottomBar", //设置初始路由 显示页面
        onGenerateRoute: (RouteSettings s){
          switch(s.name){
            case "provider":
              return MaterialPageRoute(
                  builder: (context) {
                    return ProviderDemo();
                  },settings: s);
          }
        },
        // home: ProviderDemo()
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
        ElevatedButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Text('点击'))
      ],
    );
  }
}
