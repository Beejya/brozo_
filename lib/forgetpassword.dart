import 'package:brozoapp/Signin.dart';
import 'package:flutter/material.dart';

class forgetpassword extends StatelessWidget {
  const forgetpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => signin()),
  );
        }, icon: Icon(Icons.arrow_back)
        ),
         iconTheme: IconThemeData(
      color: Colors.black,
      ),
      ),
      body: Column(
        children: [
          Row(
            children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Your Email", style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),
                )
            ],
          ),
          Container(
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Enter the email address you used to sign up\nWe'll send you a password reset link ", style: TextStyle(color: Colors.black38),),
              )
            ]),
          ),
          SizedBox(height: 50,),
          Container(
                child: TextField(
                  decoration: InputDecoration( 
                    suffixIcon: Icon(Icons.email),
                    labelText: "Email",
                  ),
                ),
              ),
              Expanded(child: Align(alignment: Alignment.bottomRight,
              child: ElevatedButton(
                style: 
                ElevatedButton.styleFrom(shape: StadiumBorder(),
                primary: Colors.grey
                  ),
                onPressed: (){
              }, child: Icon(Icons.arrow_forward), 
              ),
             ))
        ],
      ),
    );
  }
}