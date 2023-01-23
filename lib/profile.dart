import 'package:brozoapp/Signin.dart';
import 'package:brozoapp/signup.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
          title: Text("Hello !", style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(children: [
                    Container(child: Icon(Icons.place)),
                    SizedBox(height: 20,),
                    Container(child: Text("Region"),)
                  ]),           
                ),
              ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                  child: Row(children: [
                    Container(child: Icon(Icons.error,)),
                    Container(child: Text("About"),)
                  ]),           
              ),
               ),
               SizedBox(height: 400,),
              Container(
                height: 40,
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                  onPressed: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const signin()),
  );
                  }, child: Text("Login")),
              ),
              Container(
                child: TextButton(onPressed: (){
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const signup()),
  );
                }, child: Text("Create new")),
              )
            ],
          ),
        ),
    );
  }
}