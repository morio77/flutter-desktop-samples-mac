import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menubar/menubar.dart';

class MenuBar extends StatefulWidget {
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  var menuLabel = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('menu_bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(menuLabel),
            TextButton(
              onPressed: () => addMenuBar(),
                child: Text('メニューバーを追加'),
            )
          ],
        ),
      ),
    );
  }

  Future<void> addMenuBar() async {
    // メニューアイテムを作成(メニューバーをクリックしたときに出てくる中身の項目)
    var menuItems = <MenuItem>[];
    final greetings = ['おはようございます', 'こんにちは', 'こんばんは',];

    for (final greetingString in greetings) {
      menuItems.add(
        MenuItem(
            label: greetingString,
            onClicked: () => {
              setState(() {
                menuLabel = greetingString;
              }),
            }
        ),
      );
    }

    // メニューアイテムをサブメニューとして作成
    final subMenu = Submenu(label: 'あいさつ', children: menuItems);

    // メニューバーにサブメニューをセットする
    await setApplicationMenu([subMenu]);
  }
}