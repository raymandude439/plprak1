import 'package:flutter/foundation.dart';
import 'package:plprak1/model/warnet_place.dart';

class DoneWarnetProvider extends ChangeNotifier{
  final List<WarnetPlace> _doneWarnetPlaceList = [];

  List<WarnetPlace> get doneWarnetPlaceList => _doneWarnetPlaceList;

  void complete(WarnetPlace place, bool isDone){
    isDone
        ? _doneWarnetPlaceList.add(place)
        : _doneWarnetPlaceList.remove(place);
    notifyListeners();
  }
}