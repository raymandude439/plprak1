import 'dart:html';

import 'package:plprak1/model/warnet_place.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/warnet_place.dart';
import 'package:plprak1/api/api_service.dart';


class EditScreen extends StatelessWidget{
  final WarnetPlace place;
  EditScreen({required this.place});

  @override
  Widget build(BuildContext context){
    final name = TextEditingController(text: place.name);
    final location = TextEditingController(text: place.location);
    final imageAsset = TextEditingController(text: place.imageAsset);
    final waktu = TextEditingController(text: place.waktu);
    final hari = TextEditingController(text: place.hari);
    final tarif = TextEditingController(text: place.tarif);
    final deskripsi = TextEditingController(text: place.deskripsi);


    return Scaffold(
      appBar: AppBar(
        title: Text('Edit ' + place.name),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () async{
              var url = Uri.parse('http://192.168.0.6/keperluanapi/index.php');
              var response = await http.post(url, body:
              {'action': 'delete',
                'id': place.id
              });
              if (response.statusCode == 200) {
                var count = 0;
                Navigator.popUntil(context, (route) {
                  return count++ == 2;
                });
              } else {
                throw Exception('Failed to load top headlines');
              }
            },
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Container( //img1
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Gambar Utama',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: imageAsset,
                        )
                      ],
                    )
                ),

                Container( //title
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Nama Tempat',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: name,
                        )
                      ],
                    )
                ),

                Container( //location
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Lokasi',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: location,
                        )
                      ],
                    )
                ),

                Container( //openDay
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Hari Buka',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: hari,
                        )
                      ],
                    )
                ),

                Container( //openTime
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Jam Operasional',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: waktu,
                        )
                      ],
                    )
                ),

                Container( //price
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Tarif',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: tarif,
                        )
                      ],
                    )
                ),

                Container( //Description
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          maxLines: 8,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Deskripsi Tempat',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: deskripsi,
                        )
                      ],
                    )
                ),

                Container( //Save Button
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30, bottom: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                          onPressed: () async{
                            var url = Uri.parse('http://192.168.0.6/keperluanapi/index.php');
                            var response = await http.post(url, body:
                            {'action': 'update',
                              'id': place.id,
                              'name': name.text,
                              'location': location.text,
                              'imageAsset': imageAsset.text,
                              'waktu': waktu.text,
                              'hari': hari.text,
                              'tarif': tarif.text,
                              'deskripsi': deskripsi.text,
                            });
                            if (response.statusCode == 200) {
                              var count = 0;
                              Navigator.popUntil(context, (route) {
                                return count++ == 2;
                              });
                            } else {
                              throw Exception('Failed to load top headlines');
                            }
                          },
                          child: const Text('Save'),
                        ),
                      ],
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
