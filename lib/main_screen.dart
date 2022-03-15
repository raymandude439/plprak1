import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Warnet Daerah Surabaya"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final WarnetPlace place = warnetPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return.DetailScreen();
              }));
            },
            child: listItem(place),
          );
        },
        itemCount: warnetPlaceList.length,
      ),
    );
  }

  Widget listItem(){
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget> [
          Expanded(
            flex: 1,
            child: Image.asset(
                place.imageAsset,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Text(
                    place.name,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    place.location,
                  ),
                ],
              ),
            )
          )
        ],
      )
    );
  }
}