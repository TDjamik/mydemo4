

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget{
  static const id = "/detail_page";
  String? input;

  DetailPage({Key? key, this.input}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  void backToHome(){
    Navigator.of(context).pop({"data": "Dart", "age": 33});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: MaterialButton(
        onPressed: backToHome,
        color: Colors.blueAccent,
        child: Text(widget.input!),
      )),
    );
  }
}
