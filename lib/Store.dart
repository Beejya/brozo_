// import 'package:brozoapp/forgetpassword.dart';
// import 'package:flutter/material.dart';

// class Store extends StatelessWidget {
//   const Store({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//       return Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 30),
//           child: Column(
//             children: [
//               Container(
//                 child: TextField(
//                   decoration: InputDecoration( 
//                     suffixIcon: Icon(Icons.email),
//                     labelText: "Email",
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10,),
//                Container(
//                 child: TextField(
//                   decoration: InputDecoration(
//                     labelText: "Password",
//                     suffixIcon: Icon(Icons.remove_red_eye_outlined)
//                   ),
//                 ),
//               ),
//               Expanded(child: Align(alignment: Alignment.bottomLeft,
//               child: TextButton(onPressed: (){Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => forgetpassword()),
//   );}, child: Text("Forget Password?")),
//               ))
//             ],
//           ),
//         ),
//       );
//   }
// }