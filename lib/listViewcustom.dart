import 'package:flutter/material.dart';


class ListViewCustom extends StatelessWidget {
  ListViewCustom({Key? key}) : super(key: key);

  List<Color> colors = [
   Colors.blueGrey,
   Colors.green,
   Colors.deepOrange,
   Colors.purple
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter ListView"),
      ),
      body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate((BuildContext, index) {
            return Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              color: colors[index],
            );
          },
          childCount: 4,
        ),
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      )
    );
  }
}