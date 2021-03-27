import 'package:flutter/material.dart';
import 'package:flutter_desktop_samples_mac/functions/menu_bar.dart';

import 'functions/file_selector.dart';
import 'functions/get_network_image.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter for Desktop mac Samples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // いい感じのコンテナを定義
    Widget _listItem(String titleText, StatefulWidget destinationPage) {
      return Container(
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1.0, color: Colors.grey)
          ),
        ),
        child: ListTile(
          title: Text(titleText),
          onTap: () =>
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => destinationPage)),
        ),
      );
    }

    // リストビューに表示するアイテム
    final listViewItems = [
      _listItem('file_selector', FileSelector()),
      _listItem('get_network_image', GetNetworkImage()),
      _listItem('menu_bar', MenuBar()),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text('サンプル集'),
        ),
        body: ListView(
          children: listViewItems,
        )
    );

  }
}