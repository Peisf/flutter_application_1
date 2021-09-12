import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioDemo extends StatefulWidget {
  const DioDemo({Key? key}) : super(key: key);

  @override
  _DioDemoState createState() => _DioDemoState();
}

class _DioDemoState extends State<DioDemo> {
  Dio _dio = Dio();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dio.options.baseUrl = "http://api.td0f7.cn:8083";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("网络请求Dio"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: _get, child: Text("Get")),
          ElevatedButton(onPressed: _post, child: Text("Post")),
          ElevatedButton(onPressed: _put, child: Text("Put")),
          ElevatedButton(onPressed: _delete, child: Text("Delete")),
        ],
      ),
    );
  }

  void _get() async {
    /**
     * get查询
     */
    var result = await _dio.get("/dio");
    print(result);
  }

  void _post() async {
    /**
     * post查询
     */
    var result = await _dio.post("/dio", queryParameters: {"title": "标题"});
    print(result);
  }

  void _put() async {
    /**
     * put查询
     */
    var result = await _dio.put("/dio", queryParameters: {"title": "标题2"});
    print(result);
  }

  void _delete() async {
    /**
     * delete查询
     */
    var result = await _dio.delete("/dio",
        queryParameters: {
          "id": 1,
        },
        options: Options(headers: {"token": "dsadada"}));
    print(result);
  }
}
