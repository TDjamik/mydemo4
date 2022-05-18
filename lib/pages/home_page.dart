import 'package:flutter/material.dart';
import 'package:mydemo4/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  static const id = "/home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, dynamic> map = {"Flutter": 22};
  String data = "OPEN DETAIL PAGE";
  int age = 0;

  Future toDetail() async {
    Map res = await Navigator.of(context).push(MaterialPageRoute(builder: (c) {
      return DetailPage(input: map.toString());
    }));
    if (res.containsKey("data")) {
      setState(() {
        data = res["data"];
        age = res['age'];
      });
    } else {
      print("nothing");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: MaterialButton(
        onPressed: toDetail,
        color: Colors.blueAccent,
        child: Text(data + " " + age.toString()),
      )),
    );
  }
}
