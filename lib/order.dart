import 'package:flutter/material.dart';

class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Container(
                width: 200,
                margin: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image(
                    image: AssetImage(
                        'assets/images/1.png'),
                  ),)),
                
            Container(
              child: Text(
                "Send a Package",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text("A courier will pick up and"),
            ),
            Container(
              child: Text("delivery documents, gift "),
            ),
            Container(
              child: Text("flowers, food and other items "),
            ),
            SizedBox(height: 30,),
            Container(
                      color: Color.fromRGBO(0, 0, 200, 0),
                      height: 40,
                      width: 170,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Create oder"),
                          style: ButtonStyle(
                              shape:
                                  MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )))),
                    ),
            SizedBox(height: 150),
            Row(
              children: [
                Container(
                  child: TextButton(onPressed: (){}, child: Text("Login")),
                ),
                Container(
                  child: Text(" Or "),
                ),
                Container(
                 child: TextButton(onPressed: (){}, child: Text("Signup")),
                ),
              ],
            ),
          ],
        ),
       
      ], 
       
    );
  }
}