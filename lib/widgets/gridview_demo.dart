import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("网格布局"),
      ),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          // scrollDirection: Axis.horizontal,
          children: [
            // Icon(Icons.add),
            // Icon(Icons.home),
            // Icon(Icons.clean_hands),
            // Icon(Icons.baby_changing_station),
            // Icon(Icons.e_mobiledata),
            // Icon(Icons.face_outlined),
            // Icon(Icons.g_mobiledata),
            // Icon(Icons.ice_skating),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.black,
            ),
          ],

      ),
    );
  }
}
