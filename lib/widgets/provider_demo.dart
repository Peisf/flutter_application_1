import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/countProvider.dart';
import 'package:provider/provider.dart';

class ProviderDemo extends StatefulWidget {
  const ProviderDemo({Key? key}) : super(key: key);

  @override
  _ProviderDemoState createState() => _ProviderDemoState();
}

class _ProviderDemoState extends State<ProviderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider全局状态管理"),
        centerTitle: true,
      ),
      // body: Text(Provider.of<CountProvider>(context).count.toString()),
      body: Column(
        children: [
          Text(Provider.of<CountProvider>(context).count.toString()),
          ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed("provider2"),
              child: Text("跳转"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          context.read<CountProvider>().add();
        },
      ),
    );
  }
}

class ProviderDemoTwo extends StatelessWidget {
  const ProviderDemoTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          context.read<CountProvider>().add();
        },
      ),
    );
  }
}
