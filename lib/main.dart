import 'package:flutter/material.dart';
import '/Animatedlist.dart';
import '/ListView1.dart';
import '/List_wheel.dart';
import '/ListviewBuilder1.dart';
import '/ListviewSeparated1.dart';
import '/list1.dart';
import '/listViewcustom.dart';
import '/reordable_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ReorderableViewPage(),
      // home: Reordable(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  //   final items = ['Item 1','Item 2','Item 3','Item 4','Item 5','Item 6','Item 7','Item 8','Item 9',];
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold
  //   (
  //     body: ListView(
  //       children: const <Widget>[
  //         ListTile(
  //           tileColor: Colors.red,
  //           selectedTileColor: Colors.yellow,
  //           title: Text(items[index].),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  final items = ['Item 1','Item 2','Item 3','Item 4','Item 5','Item 6','Item 7','Item 8','Item 9',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item $index'),
            );

          },
        ),
      ),
    );
  }
}
