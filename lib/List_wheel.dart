import 'package:flutter/material.dart';

class Wheel extends StatefulWidget {
  const Wheel({Key? key}) : super(key: key);
 
  @override
  // ignore: library_private_types_in_public_api
  _WheelState createState() => _WheelState();
}
 
class _WheelState extends State<Wheel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Geeksforgeeks"),
        backgroundColor: Colors.green,
      ),
      body: ListWheelScrollView(
        itemExtent: 100,//->space
        diameterRatio: 1,//space between items
        offAxisFraction: -0.4,//->direction
        squeeze: 0.5,
 
        clipBehavior: Clip.antiAlias,
        children: const <Widget>[
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 1',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 2',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 3',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 4',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 5',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 6',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 7',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 8',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}