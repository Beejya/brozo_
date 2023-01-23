// import 'package:flutter/material.dart';
// import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

// class Map extends StatefulWidget {
//   const Map({Key? key}) : super(key: key);

//   @override
//   State<Map> createState() => _MapState();
// }

// class _MapState extends State<Map> {
//    String address = " " ;

//   @override
//   Widget build(BuildContext context) {
   

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Map"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//            children: [
//             SizedBox(
//               height: 200,
//               child: Center(
//                 child: Text(address),
//               ),
//             ),
//             SizedBox(
//               height: 500,
//               child: OpenStreetMapSearchAndPick(
//           center: LatLong(23, 89),
//           buttonColor: Colors.blue,
//           buttonText: 'Set Current Location',
//           onPicked: (pickedData) {
//             setState(() {
//               address = pickedData.address;
//             });
//             print(pickedData.latLong.latitude);
//             print(pickedData.latLong.longitude);
//             print(pickedData.address);
//           }
//           ),
//             )
//            ],
//         ),
//       ),
//     );
//   }
// }