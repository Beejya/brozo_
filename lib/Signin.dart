import 'package:brozoapp/Person.dart';
import 'package:brozoapp/Store.dart';
import 'package:brozoapp/newOrder.dart';
import 'package:brozoapp/profile.dart';
import 'package:flutter/material.dart';
import 'package:brozoapp/forgetpassword.dart';
import 'package:flutter/material.dart';


class signin extends StatelessWidget {
  const signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 2, child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => profile()),
  );
          }, icon: Icon(Icons.arrow_back)),
           iconTheme: IconThemeData(
      color: Colors.black,
      ),
          backgroundColor: Colors.white,
          title: Text("Sign In", style: TextStyle(color: Colors.black),),
          bottom: TabBar(  
              tabs: [  
                Tab(child: Text("Person",style: TextStyle(color: Colors.black),)),  
                Tab(child: Text("Store",style: TextStyle(color: Colors.black),))  
              ],  
            ),
        ),
        body: TabBarView(children: [
          Person(),
          Store(),
        ]),
      ),),
       
    );
  }
}



class Store extends StatelessWidget {
  const Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Container(
                child: TextField(
                  decoration: InputDecoration( 
                    suffixIcon: Icon(Icons.email),
                    labelText: "Email",
                  ),
                ),
              ),
              SizedBox(height: 10,),
               Container(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)
                  ),
                ),
              ),
              Expanded(child: Align(alignment: Alignment.bottomLeft,
              child: TextButton(onPressed: (){Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => forgetpassword()),
  );}, child: Text("Forget Password?")),
              ))
            ],
          ),
        ),
      );
  }
}



class Person extends StatelessWidget {
  const Person({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Container(
                child: TextField(
                  controller: TextEditingController(text: "+91"),
                  decoration: InputDecoration( 
                    suffixIcon: Icon(Icons.call),
                    labelText: "Phone Number",
                  ),
                ),
              ),
              SizedBox(height: 10,),
               Container(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const newOrder()),
  );
                    }, child: Text("Login")),
                  ),
                ],
              ),
              Expanded(child: Align(alignment: Alignment.bottomLeft,
              child: TextButton(onPressed: (){
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => forgetpassword()),
  );
              }, child: Text("Forget Password?")),
              ))
            ],
          ),
        ),
      );
  }
}



