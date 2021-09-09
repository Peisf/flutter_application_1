import 'package:flutter/material.dart';

class TableDemo extends StatefulWidget {
  const TableDemo({Key? key}) : super(key: key);

  @override
  _TableDemoState createState() => _TableDemoState();
}

class _TableDemoState extends State<TableDemo> {
  List<Map> list = [];
  int _sortColumnIndex = 0;
  bool _sortAscending = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 1; i < 10; i++) {
      list.add({
        "name": "a" * i,
        "gender": i % 1 == 0 ? "男" : "女",
        "select": false,
        "age": i,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表格演示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        // child: Table(
        //   border: TableBorder.all(
        //       color: Colors.grey
        //   ),
        //   children: list.map((e) => TableRow(
        //       children: [
        //         Text(e["name"]),
        //         Text(e["gender"]),
        //       ]
        //   )).toList(),
        // ),
        child: DataTable(
          sortColumnIndex: _sortColumnIndex,
          sortAscending: _sortAscending,
          columns: [
            DataColumn(
              label: Text("姓名"),
            ),
            DataColumn(label: Text("性别")),
            DataColumn(
                label: Text("年龄"),
                onSort: (columnIndex, ascending) {
                  setState(() {
                    _sortColumnIndex = columnIndex;
                    _sortAscending = ascending;

                    list.sort((a, b) {
                      if (!ascending) {
                        var c = a;
                        a = b;
                        b = c;
                      }
                      return a["age"].compareTo(b["age"]);
                    });
                  });
                })
          ],
          rows: list
              .map((e) => DataRow(
                    selected: e["select"],
                    onSelectChanged: (v) {
                      setState(() {
                        if (e["select"] != v) {
                          e["select"] = v;
                        }
                      });
                    },
                    cells: [
                      DataCell(Text(e["name"])),
                      DataCell(Text(e["gender"])),
                      DataCell(Text(e["age"].toString())),
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}
