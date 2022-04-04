import 'package:flutter/material.dart';
import 'package:plprak1/list_item.dart';
import 'package:plprak1/model/warnet_place.dart';
import 'package:plprak1/detail_screen.dart';
import 'package:plprak1/provider/done_warnet_provider.dart';
import 'package:provider/provider.dart';
import 'package:plprak1/api/api_service.dart';

class WarnetList extends StatefulWidget{
  final List<WarnetPlace> doneWarnetPlaceList;
  const WarnetList({
    Key? key,
    required this.doneWarnetPlaceList
  }) : super(key: key);
  @override
  _WarnetListState createState() => _WarnetListState(doneWarnetPlaceList);
}

class _WarnetListState extends State<WarnetList>{
  final List<WarnetPlace> doneWarnetPlaceList;

  late Future<WarnetResult> _warnet;
  @override
  void initState() {
    super.initState();
    _warnet = ApiService().topHeadlines();
  }

  Widget _buildList(BuildContext context) {
    return FutureBuilder(
      future: _warnet,
      builder: (context, AsyncSnapshot<WarnetResult> snapshot) {
        var state = snapshot.connectionState;
        if (state != ConnectionState.done) {
          return Center(child: CircularProgressIndicator());
        } else {
          if (snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data?.warnetPlaces.length,
              itemBuilder: (context, index){
                var place = snapshot.data?.warnetPlaces[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DetailScreen(place: place!);
                    }));
                  },
                  child: Consumer<DoneWarnetProvider>(
                    builder: (context, DoneWarnetProvider data,widget){
                      return ListItem(
                        place: place!,
                        isDone: data.doneWarnetPlaceList.contains(place),
                        onCheckboxClick: (bool? value){
                          setState((){
                            if(value!=null){
                              value
                                  ? data.doneWarnetPlaceList.add(place)
                                  : data.doneWarnetPlaceList.remove(place);
                            }
                          });
                        },
                      );
                    },
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return Text('');
          }
        }
      },
    );
  }

  _WarnetListState(this.doneWarnetPlaceList);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       body: _buildList(context),
     );
  }
}