import 'package:flutter/material.dart';

class ListViewSeparated extends StatelessWidget {
  ListViewSeparated({Key? key}) : super(key: key);

  List<String> images = [
   "https://images.pexels.com/photos/60597/dahlia-red-…7.jpeg?cs=srgb&dl=pexels-pixabay-60597.jpg&fm=jpg",
   "https://images.pexels.com/photos/60597/dahlia-red-…7.jpeg?cs=srgb&dl=pexels-pixabay-60597.jpg&fm=jpg",
   "https://images.pexels.com/photos/60597/dahlia-red-…7.jpeg?cs=srgb&dl=pexels-pixabay-60597.jpg&fm=jpg",
   "https://images.pexels.com/photos/60597/dahlia-red-…7.jpeg?cs=srgb&dl=pexels-pixabay-60597.jpg&fm=jpg",
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter ListView"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext, index){
          return ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(images[index]),),
            title: Text("This is title"),
            subtitle: Text("This is subtitle"),
          );
        },
        separatorBuilder: (BuildContext,index)
        {
          return Divider(height: 1);
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      )
    );
  }
}