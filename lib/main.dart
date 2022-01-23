import 'dart:convert';

import 'package:flutter/material.dart';
import 'Info.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

final TextEditingController _nameController = TextEditingController();
final TextEditingController _dateController = TextEditingController();
final TextEditingController _numberControler = TextEditingController();

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> userMap = jsonDecode());
    var user = User.fromJson(userMap);
    return MaterialApp(
      home: Scaffold(
          bottomNavigationBar: Container(
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
                Container(
                  color: Colors.blue,
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.library_add))
                    ],
                  ),
                )
              ],
            ),
          ),
          appBar: AppBar(),
          body: Container(
            child: ListView.builder(
              itemCount: toMap.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(toMap[index]),
                );
              },
            ),
          )),
    );
  }

  void _showMaterialDialog(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Material Dialog'),
            content: Text('Hey! I am  Coflutter!'),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // _dismissDialog();
                  },
                  child: Text('Close')),
              TextButton(
                onPressed: () {
                  print('HelloWorld!');
                  // _dismissDialog();
                },
                child: Text('HelloWorld!'),
              )
            ],
          );
        });
  }
}
