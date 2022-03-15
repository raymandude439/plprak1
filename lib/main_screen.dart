import 'package:flutter/material.dart';
import 'package:plprak1/model/warnet_place.dart';
import 'package:plprak1/detail_screen.dart';

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
                return DetailScreen(place: place);
              }));
            },
            child: listItem(place),
          );
        },
        itemCount: warnetPlaceList.length,
      ),
    );
  }

  Widget listItem(WarnetPlace place){
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
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
                children: <Widget>[
                  Text(
                    place.name,
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
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