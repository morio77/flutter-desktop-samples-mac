import 'dart:io';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FileSelector extends StatefulWidget {
  @override
  _FileSelectorState createState() => _FileSelectorState();
}

class _FileSelectorState extends State<FileSelector> {
  XFile xFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('file_selector'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.attach_file),
              onPressed: () async {
                final typeGroup = XTypeGroup(label: 'images', extensions: ['jpg', 'png']);
                xFile = await openFile(acceptedTypeGroups: [typeGroup]);
                setState(() {});
              },
            ),
            xFile == null ? Container() : Container(
              height: 150,
              child: Image.file(
                File(xFile.path),
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        )
      ),
    );
  }
}