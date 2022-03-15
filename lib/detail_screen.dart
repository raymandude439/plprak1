import 'package:flutter/material.dart';
import 'package:plprak1/model/warnet_place.dart';

class DetailScreen extends StatelessWidget {

  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final WarnetPlace place;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),


            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.calendar_today,),
                      Text(place.hari,
                        style: const TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.access_time_filled,),
                      Text(place.waktu,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ]
                  ),
                  Column(
                      children: <Widget>[
                        const Icon(Icons.attach_money,),
                        Text(place.tarif,
                          style: const TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ]
                  ),
                ],
              ),
            ),
            Image.asset(
              place.imageAsset,
              height: 200,
              width: 200,
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.location,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.deskripsi,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        place.imageAsset,
                        height: 90,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        place.imageAsset,
                        height: 90,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        place.imageAsset,
                        height: 90,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        place.imageAsset,
                        height: 90,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        place.imageAsset,
                        height: 90,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        place.imageAsset,
                        height: 90,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        place.imageAsset,
                        height: 90,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        place.imageAsset,
                        height: 90,
                      ),
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}

