import 'package:flutter/material.dart';

class List1 extends StatefulWidget {
  const List1({Key? key}) : super(key: key);

  @override
  State<List1> createState() => _List1State();
}

class _List1State extends State<List1> {

  String txt = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue[50],
              child: ListTile(
                leading: const Icon(Icons.add),
                title: const Text(
                  'GFG title',
                  textScaleFactor: 1.5,
                ),
                trailing: const Icon(Icons.done),
                subtitle: const Text('This is subtitle'),
                selected: true,
                onTap: () {
                  setState(() {
                    txt = 'List Tile pressed';
                  });
                },
              ),
            ),
          ),
          Text(
            txt,
            textScaleFactor: 2,
          )
        ],
      ),
    );
  }
}