import 'package:flutter/material.dart';
import 'package:plprak1/done_warnet_list.dart';
import 'package:plprak1/model/warnet_place.dart';
import 'package:plprak1/warnet_list.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();

  // Widget listItem(WarnetPlace place){
  //   return Card(
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget> [
  //         Expanded(
  //           flex: 1,
  //           child: Image.asset(
  //               place.imageAsset,
  //           ),
  //         ),
  //         Expanded(
  //           flex: 2,
  //           child: Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               mainAxisSize: MainAxisSize.min,
  //               children: <Widget>[
  //                 Text(
  //                   place.name,
  //                   style: const TextStyle(
  //                     fontSize: 16.0,
  //                   ),
  //                 ),
  //                 const SizedBox(
  //                   height: 10,
  //                 ),
  //                 Text(
  //                   place.location,
  //                 ),
  //               ],
  //             ),
  //           )
  //         )
  //       ],
  //     )
  //   );
  // }
}

class _MainScreenState extends State<MainScreen>{
  // final List<WarnetPlace> doneWarnetPlaceList = [];
  // final List<WarnetPlace> warnetPlaceList = [
  //   WarnetPlace(
  //     name: 'Centro E-Sports Arena',
  //     location: 'Jl. Barata Jaya No.9, Baratajaya \nKec. Gubeng, Kota SBY, Jawa Timur 60284' ,
  //     imageAsset: 'images/2018-08-12.jpg',
  //     tarif: 'Mulai dari Rp. 3.000',
  //     hari: 'Setiap Hari',
  //     waktu: '24 Jam \n(jam malam mulai 20.00 - 05.00)',
  //     deskripsi: 'Warnet terbaik daerah tengah kota \nFasilitas: Full AC, Parkir, Toilet, Kantin Dalam (05.30 - 19.30) \nHarga Biasa - Jam: 40k - 10 jam \n Harga VIP - Jam : 60k - 10 jam',
  //
  //   ),
  //   WarnetPlace(
  //     name: '3Kingdom Klampis',
  //     location: 'Ruko, Jl. Klampis Jaya No.31s, Klampis Ngasem \nKec. Sukolilo, Kota SBY, Jawa Timur 60117',
  //     imageAsset: 'images/download(9).jpg',
  //     tarif: 'Mulai dari Rp. 3.500',
  //     hari: 'Setiap Hari',
  //     waktu: '24 Jam',
  //     deskripsi: 'Istana Warnet dengan 3 Gedung: Biasa, VIP dan VVIP \nFasilitas: Full AC, Parkir, Toilet, Kantin Dalam (06.00 - 20.00)\nHarga Biasa - Jam: \nHarga VIP - Jam : \nHarga VVIP - Jam: ',
  //   ),
  //   WarnetPlace(
  //     name: 'Army Net',
  //     location: 'Jl. Raya Panjang Jiwo Permai No.Kav. J, Panjang Jiwo \nKec. Tenggilis Mejoyo, Kota SBY, Jawa Timur 60299',
  //     imageAsset: 'images/download(10).jpg',
  //     tarif: 'Mulai dari Rp. 4.000',
  //     hari: 'Jumat Tutup',
  //     waktu: 'PPKM: 06.00 - 20.00',
  //     deskripsi: 'Warnet Para Tentara Pejuang Ranked dan E-Sports \nFasilitas: Full AC, Parkir, Toilet, Kantin Dalam (24 Jam) \nHarga Biasa - Jam: \nHarga VIP - Jam: ',
  //   ),
  //   WarnetPlace(
  //     name: 'Xgate Esport Arena',
  //     location: 'Ruko Landmark Delta, Jl. Panjang Jiwo Permai Selatan, Panjang Jiwo \nKec. Tenggilis Mejoyo, Kota SBY, Jawa Timur 60299',
  //     imageAsset: 'images/download(11).jpg',
  //     tarif: 'Mulai dari Rp. 3.750',
  //     hari: 'Senin Tutup',
  //     waktu: 'PPKM: 7.00 - 21.00',
  //     deskripsi: 'Warnet bergengsi khusus peminat perlombaan E-Sport sejati\nFasilitas: Full AC, Parkir, Toilet, Kantin Dalam (07.00 - 21.00)\nHarga Biasa - Jam: \nHarga VIP - Jam: ',
  //   ),
  //   WarnetPlace(
  //     name: 'Gunzie E-Sport Arena',
  //     location: 'Jl. Nginden Semolo No.42, Menur Pumpungan \nKec. Sukolilo, Kota SBY, Jawa Timur 60118',
  //     imageAsset: 'images/download(12).jpg',
  //     tarif: 'Mulai dari Rp. 2.750',
  //     hari: 'Setiap Hari',
  //     waktu: '24 Jam',
  //     deskripsi: 'Warnet fasilitas terkini dan terjangkau di kantong\nFasilitas: Full AC, Parkir, Toilet, Kantin Dalam (24 Jam)\nHarga Biasa - Jam: \nHarga VIP - Jam: ',
  //   ),
  // ];
  //
  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text("Warnet Daerah Surabaya"),
  //     ),
  //     body: ListView.builder(
  //       itemBuilder: (context, index){
  //         final WarnetPlace place = warnetPlaceList[index];
  //         return InkWell(
  //           onTap: () {
  //             Navigator.push(context, MaterialPageRoute(builder: (context) {
  //               return DetailScreen(place: place);
  //             }));
  //           },
  //           child: listItem(place),
  //         );
  //       },
  //       itemCount: warnetPlaceList.length,
  //     ),
  //   );
  // }
  final List<WarnetPlace> doneWarnetPlaceList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Warnet Daerah Surabaya'),
        actions: <Widget> [
          IconButton(
              icon: const Icon(Icons.done_outline),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return const DoneWarnetList();
                  }),
                );
              },
          )
        ],
      ),
      body: WarnetList(doneWarnetPlaceList: doneWarnetPlaceList),
    );
  }
}