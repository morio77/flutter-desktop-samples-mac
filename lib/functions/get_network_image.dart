import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetNetworkImage extends StatefulWidget {
  @override
  _GetNetworkImageState createState() => _GetNetworkImageState();
}

class _GetNetworkImageState extends State<GetNetworkImage> {
  final imageSrcPath = 'https://2.bp.blogspot.com/-InDDi4UwPGs/XAY5qpGJnPI/AAAAAAABQdg/q2BHwOIcoOoJHgfHUS41hwvKUZ3vkj7XQCLcBGAs/s800/cat12_moyou_mike.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('get_network_image'),
      ),
      body: Center(
        child: Image.network(imageSrcPath),
      ),
    );
  }
}