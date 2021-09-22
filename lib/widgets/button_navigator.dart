import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/demo_02.dart';
import 'package:flutter_application_1/widgets/layout_demo.dart';

class BottomNavigatorBarDemo extends StatefulWidget {
  const BottomNavigatorBarDemo({Key? key}) : super(key: key);

  @override
  _BottomNavigatorBarDemoState createState() => _BottomNavigatorBarDemoState();
}

class _BottomNavigatorBarDemoState extends State<BottomNavigatorBarDemo> {
  List<Widget> widgets = [PageDemo(),LayoutDemo()];

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("底部选项卡"),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.add), label: "新增"),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "我的")
      //   ],
      //   currentIndex: _index,
      //   onTap: (v){
      //     setState(() {
      //       _index = v;
      //     });
      //   },
      // ),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).primaryColor,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.add)),
            SizedBox(),
            IconButton(onPressed: (){}, icon: Icon(Icons.home))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.widgets_rounded),
        onPressed: (){
          print("object");
        },
      ),
      body: Center(
        child: widgets[_index],
      ),
    );
  }
}
