// import 'package:brozoapp/forgetpassword.dart';
// import 'package:brozoapp/newOrder.dart';
// import 'package:flutter/material.dart';

// class Person extends StatelessWidget {
//   const Person({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//       return Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 30),
//           child: Column(
//             children: [
//               Container(
//                 child: TextField(
//                   controller: TextEditingController(text: "+91"),
//                   decoration: InputDecoration( 
//                     suffixIcon: Icon(Icons.call),
//                     labelText: "Phone Number",
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
//               Row(
//                 children: [
//                   Container(
//                     child: ElevatedButton(onPressed: (){
//                       Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => const newOrder()),
//   );
//                     }, child: Text("Login")),
//                   ),
//                 ],
//               ),
//               Expanded(child: Align(alignment: Alignment.bottomLeft,
//               child: TextButton(onPressed: (){
//                 Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => forgetpassword()),
//   );
//               }, child: Text("Forget Password?")),
//               ))
//             ],
//           ),
//         ),
//       );
//   }
// }