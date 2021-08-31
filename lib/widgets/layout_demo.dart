import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("布局练习"),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.grey,
          // child: Column(
          //   children: [
          //     Container(
          //       color: Colors.red,
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Colors.green,
          //       width: 150,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Colors.yellow,
          //       width: 100,
          //       height: 100,
          //     ),
          //   ],
          // ),
          // child: Row(
          //   textDirection: TextDirection.rtl,
          //   mainAxisSize: MainAxisSize.max,
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Container(
          //       color: Colors.red,
          //       width: 100,
          //       height: 150,
          //     ),
          //     Container(
          //       color: Colors.green,
          //       width: 150,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Colors.yellow,
          //       width: 100,
          //       height: 100,
          //     ),
          //   ],
          // ),
          // child: Flex(
          //   direction: Axis.horizontal,
          //   children: [
          //       Expanded(
          //           child: Container(
          //             color: Colors.red,
          //             width: 100,
          //             height: 150,
          //           ),
          //         flex: 1,
          //       ),
          //       Container(
          //         color: Colors.green,
          //         width: 150,
          //         height: 100,
          //       ),
          //       Container(
          //         color: Colors.yellow,
          //         width: 100,
          //         height: 100,
          //       ),
          //     ],
          // ),

          // child: WrapDemo(), // 流式布局
          // child: StackDemo(), // 层叠布局
          // child: AlignDemo(),  // 相对定位
          child: EdgeDemo(), // 边距
        ));
  }
}

// class WrapDemo extends StatefulWidget {
//   const WrapDemo({Key? key}) : super(key: key);
//
//   @override
//   _WrapDemoState createState() => _WrapDemoState();
// }
//
// class _WrapDemoState extends State<WrapDemo> {
//   List<int> list = List.filled(20, 1);
//
//   @override
//   void iniState(){
//     super.initState();
//     for(var i = 0; i<20; i++){
//       list.add(i);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//
//       spacing: 1,
//       children: list.map((e) => Container(
//         height: 100,
//         width: 100,
//         child: Text(e.toString()),
//         color: Colors.blue,
//       )).toList(),
//     );
//   }
// }

// class StackDemo extends StatelessWidget {
//   const StackDemo({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       fit: StackFit.expand,
//       alignment: AlignmentDirectional.center,
//       children: [
//         Container(
//           color: Colors.green,
//           width: 100,
//           height: 100,
//         ),
//         Container(
//           color: Colors.red,
//           width: 50,
//           height: 100,
//         ),
//         Positioned(
//           width: 20,
//           height: 20,
//           child: Container(
//             color: Colors.yellow,
//           ),
//           // top: 10,
//           // bottom: 10,
//           // left: 10,
//           // right: 10,
//         ),
//       ],
//     );
//   }
// }

// class AlignDemo extends StatelessWidget {
//   const AlignDemo({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(50),
//       width: 200,
//       height: 200,
//       color: Colors.green,
//       child: Align(
//         // -1 -1 是开始的位置  0，0 是中间的位置  1，1 是结束的位置
//         alignment: Alignment(.5,-.8),
//         child: FlutterLogo(
//           size: 60,
//         ),
//       ),
//     );
//   }
// }

class EdgeDemo extends StatelessWidget {
  const EdgeDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: 100,
    //   height: 100,
    //   color: Colors.red,
    //   margin: EdgeInsets.all(8), // 外边距
    //   // margin: EdgeInsets.only(left: 8), // 外边距
    //   padding: EdgeInsets.all(20),    // 内边距
    //   child: Text("data"),
    // );
    // return ConstrainedBox(   // 容器
    //   constraints: BoxConstraints(
    //     maxHeight: 100,
    //     maxWidth: 100,
    //     minHeight: 50,
    //     minWidth: 50,
    //   ),
    //   child: Container(
    //     width: 10,
    //     height: 500,
    //     color: Colors.black,
    //   ),
    // );
    // return SizedBox(  // 父容器指定了宽高  子元素宽高失效
    //   width: 100,
    //   height: 100,
    //   child: Container(
    //     width: 200,
    //     height: 10,
    //     color: Colors.yellow,
    //   ),
    // );
    return DecoratedBox(    // 装饰器
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.orange,
          ]
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(2, 2),
            blurRadius: 2
          )
        ]
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 100,
          right: 100,
          top: 20,
          bottom: 20,
        ),
        child: Text(
          "注册",
          style: TextStyle(
            color: Colors.white
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
