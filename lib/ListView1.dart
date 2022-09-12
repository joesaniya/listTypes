import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  const ListView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(
        title: const Text('ListView'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title:Text("List Item 1") ,
            )
          ),
          Card(
            child: ListTile(
              title: Text("List Item 2"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("List Item 3"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("List Item 3"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("List Item 3"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("List Item 3"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("List Item 3"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("List Item 3"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("List Item 3"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("List Item 3"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("List Item 3"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("List Item 3"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("List Item 3"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("List Item 3"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("List Item 3"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("List Item 3"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("List Item 3"),
            )
          ),
        ],
        shrinkWrap: true,
        reverse: true,
        padding: EdgeInsets.all(10),
        physics: BouncingScrollPhysics(),
        // itemExtent: 100,
      ),
    );
  }
}