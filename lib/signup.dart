import 'package:brozoapp/opt_textfield.dart';
import 'package:brozoapp/profile.dart';
import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(onPressed: (){
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => profile()),
  );
      }, icon: Icon(Icons.arrow_back), color: Colors.black),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Mobile Number", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              )
            ],
          ),
          Container(
            child: Row(
              children: [
                Container(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("OTP will be send in this number"),
                ))
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: double.maxFinite,
                child: TextField(
                  controller: TextEditingController(text: "+91"),
                  decoration: InputDecoration( 
                    suffixIcon: Icon(Icons.call),
                    labelText: "Phone Number",
                  ),
                ),
              ),
              SizedBox(height: 450,),
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      Container(child: Text("By registering or signing in you accept the\nTerms and conditions and confirm that you've read \nand acknowledged the \nprivacy Policy of Borzo India Private Limited")
                      ),
                      Container(
                       decoration: BoxDecoration(
                         color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)
                       ),
                        child: IconButton(onPressed: (){
                          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => otp_textfeild()),
  );
                        }, icon: Icon(Icons.arrow_circle_right_rounded)),)
                    ],
                  ),
                
                ),
              )
        ],
      ),
      
    );
  }
}