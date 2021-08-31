import 'package:flutter/material.dart';

class PageDemo extends StatefulWidget {
  const PageDemo({Key? key}) : super(key: key);

  @override
  _PageDemoState createState() => _PageDemoState();
}

class _PageDemoState extends State<PageDemo> with TickerProviderStateMixin {
  List<Widget> widgets = [FlutterView(), AndroidView(), IosView()];
  List tabs = ["Flutter", "Android", "IOS"];
  late TabController _tabController;
  int _index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController =
        TabController(initialIndex: _index, length: tabs.length, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _index = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement initState
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
        ),
      ),
      // body: Text(_index.toString()),
      // body: widgets[_index],
      body: TabBarView(
        children: widgets,
        controller: _tabController,
      ),
    );
  }
}

class FlutterView extends StatelessWidget {
  const FlutterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("FlutterView111"),
    );
  }
}

class AndroidView extends StatelessWidget {
  const AndroidView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("AndroidView222"),
    );
  }
}

class IosView extends StatelessWidget {
  const IosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("IosView333"),
    );
  }
}
