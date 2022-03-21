import 'package:flutter/material.dart';
import 'package:plprak1/main_screen.dart';
import 'package:plprak1/provider/done_warnet_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneWarnetProvider(),
        child: MaterialApp(
        title: 'Contacts',
        theme: ThemeData(),
        home: MainScreen(),
        );
    );

  }
}

// class DetailScreen extends StatelessWidget{
//   const DetailScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget> [
//             Container(
//                 margin: EdgeInsets.only(top: 16.0, left: 16.0),
//                 child: Text("Centro Esports Arena",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontSize: 30.0,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'Lato',
//                   ),
//                 )
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   Column(
//                     children: const <Widget>[
//                       Icon(Icons.calendar_today,),
//                       Text('\nBuka Setiap Hari',
//                         style: TextStyle(
//                           fontSize: 15.0,
//                           fontFamily: 'Lato',
//                         ),
//                       ),
//                     ],
//                   ),
//                   Column(
//                     children: const <Widget>[
//                       Icon(Icons.access_time_filled,),
//                       Text("24 jam",
//                         style: TextStyle(
//                           fontSize: 15.0,
//                           fontFamily: 'Lato',
//                         ),
//                       )
//                     ]
//                   ),
//                   Column(
//                       children: const <Widget>[
//                         Icon(Icons.attach_money,),
//                         Text("Mulai dari Rp.3,000.-",
//                           style: TextStyle(
//                             fontSize: 15.0,
//                             fontFamily: 'Lato',
//                           ),
//                         )
//                       ]
//                   ),
//                 ],
//               ),
//             ),
//             Container(),
//             Padding(
//                 padding: const EdgeInsets.all(4.0),
//                 child: Image.asset(
//                   'images/2018-08-12.jpg',
//                   height: 250,
//                   width: 250,
//                 ),
//             ),
//             Container(
//                 margin: EdgeInsets.only(top: 16.0, left: 16.0),
//                 child: Text("Lokasi: Jl. Barata Jaya No.9, Baratajaya \n Kec. Gubeng, Kota SBY, Jawa Timur 60284 \n Warnet terbaik daerah tengah kota \n Fasilitas: Full AC, Parkir, Toilet \n Harga Biasa - Jam: 40k - 10 jam \n Harga VIP - Jam : 60k - 10 jam",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 15.0,
//                     fontFamily: 'Lato',
//                   ),
//                 )
//             ),
//             Container(
//               height: 125,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Image.asset(
//                         'images/download.jpg',
//                         height: 125,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Image.asset(
//                         'images/download(1).jpg',
//                         height: 125,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Image.asset(
//                         'images/download(2).jpg',
//                         height: 125,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Image.asset(
//                         'images/download(3).jpg',
//                         height: 125,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Image.asset(
//                         'images/download(4).jpg',
//                         height: 125,
//                       ),
//                     ),
//                   ),
//
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Image.asset(
//                         'images/download(6).jpg',
//                         height: 125,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Image.asset(
//                         'images/download(7).jpg',
//                         height: 125,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Image.asset(
//                         'images/download(8).jpg',
//                         height: 125,
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             ),
//           ],
//         )
//       ),
//     );
//   }
// }


