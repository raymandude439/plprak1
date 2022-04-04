import 'package:flutter/material.dart';
import 'package:plprak1/model/warnet_place.dart';
import 'package:plprak1/provider/done_warnet_provider.dart';
import 'package:provider/provider.dart';

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
        title: const Text('Warnet Daerah Surabaya - Terkunjungi'),
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
                      Expanded(
                        flex: 1,
                        child: Image.network(
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