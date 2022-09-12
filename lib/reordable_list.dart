// import 'package:flutter/material.dart';

// class Reordable extends StatefulWidget {
//   const Reordable({Key? key}) : super(key: key);

//   @override
//   State<Reordable> createState() => _ReordableState();
// }

// class _ReordableState extends State<Reordable> {

//   List<Widget> _widgets = Iterable<int>.generate(50)
//       .map((i) => ListTile(
//         key: ValueKey(i),
//         title : Text('Item $i', style: const TextStyle(color: Colors.white)),
//         tileColor: i % 2 == 0 ? Colors.pinkAccent : Colors.purple),
//       )
//       .toList();

//   //   List<String> item = ["Clients","Designer","Developer","Director",
// //     "Employee", "Manager", "Worker","Owner"];

// //   void sorting(){
// //     setState(() {
// //       widget.item.sort();
// //     });
// //   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold
//     (
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Text("Reorderable ListView In Flutter",
//           style: TextStyle(color: Colors.pinkAccent[100]),
//         ),
//         centerTitle: true,
//         actions: <Widget>[
//           IconButton(icon: Icon(Icons.sort_by_alpha),
//               tooltip:"Sort",
//               onPressed: (){},
//               // onPressed: sorting
//           ),
//         ],
//       ),
//       body: ReorderableListView(
//     onReorder: (int oldIndex, int newIndex) {
//       setState(() {
//         if (oldIndex < newIndex) {
//           newIndex -= 1;
//         }
//         final Widget widget = _widgets.removeAt(oldIndex);
//         _widgets.insert(newIndex, widget);
//       });
//     },
//     proxyDecorator: (Widget child, int index, Animation<double> animation) {
//       return Material(
//         child: Container(
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.black, width: 5)
//           ),
//           child: child,
//         ),
//       );
//     },
//     children: _widgets,
//     reverse: true,
//   )
//     );
//   }
// }











import 'dart:developer';

import 'package:flutter/material.dart';

class ReorderableViewPage extends StatefulWidget {
  List<String> item = ["Clients","Designer","Developer","Director",
    "Employee", "Manager", "Worker","Owner"];
  @override
  _ReorderableViewPageState createState() => _ReorderableViewPageState();
}

class _ReorderableViewPageState extends State<ReorderableViewPage> {

  void reorderData(int oldindex, int newindex){
    log('reoredr');
    setState(() {
      if(newindex>oldindex){
        newindex-=1;
      }
      final items =widget.item.removeAt(oldindex);
      widget.item.insert(newindex, items);
    });
  }

  void sorting(){
    setState(() {
      widget.item.sort();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Reorderable ListView",
            style: TextStyle(color: Colors.pinkAccent[100]),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.sort_by_alpha),
                tooltip:"Sort",
                onPressed: sorting
            ),
          ],
        ),
      ),
      body: ReorderableListView(
        children: <Widget>[
          for(final items in widget.item)
            Card(
              color: Colors.blueGrey,
              key: ValueKey(items),
              elevation: 2,
              child: ListTile(
                title: Text(items),
                leading: Icon(Icons.work,color: Colors.black,),
              ),
            ),
        ],
        onReorder: reorderData,
        proxyDecorator: (Widget child, int index, Animation<double> animation) {
      return Material(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 5)
          ),
          child: child,
        ),
      );
    },

      ),
    );
  }
}