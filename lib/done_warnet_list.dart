import 'package:flutter/material.dart';
import 'package:plprak1/model/warnet_place.dart';
import 'package:plprak1/provider/done_warnet_provider.dart';

class DoneWarnetList extends StatelessWidget{
  const DoneWarnetList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<WarnetPlace> doneWarnetPlaceList =
        Provider.of<DoneWarnetProvider>(
          context,
          listen: false,
        ).doneWarnetPlaceList;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Warnet Daerah Surabaya'),
      ),
      body: ListView.builder(
          itemBuilder: (context, index){
            final WarnetPlace place = doneWarnetPlaceList[index];
            return Card(
              color: Colors.white60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  Text(
                    place.name,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const Icon(Icons.done_outline),
                ],
              ),
            );
          },
          itemCount: doneWarnetPlaceList.length,
      ),
    );
  }
}