
import 'package:brozoapp/deliverypoint.dart';
import 'package:brozoapp/deliverypoint3.dart';
import 'package:brozoapp/deliverypoint4.dart';
import 'package:flutter/material.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

class newOrder extends StatefulWidget {
  const newOrder({Key? key}) : super(key: key);

  @override
  State<newOrder> createState() => _newOrderState();
}

class _newOrderState extends State<newOrder> {
 

 final _packages = TextEditingController();
 final _addressesController = TextEditingController();

  int first = 0;
  void _number() {
    setState(() {
      first = 5;
    });
  }

  void _second() {
    setState(() {
      first = 10;
    });
  }

void _third() {
  setState(() {
    first = 15;
  });
}

void _fourth() {
  setState(() {
    first = 20;
  });
}

String  update = "";
String address = "";


void _remove() {
  setState(() {
    address = "";
  });
}

  bool value = false;
  bool theme = false;

  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            TextButton(
              onPressed: () {

              },
              child: Text(
                'Clear',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
          backgroundColor: Colors.white,
          title: Text(
            "New Order",
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {
             
            },
            icon: Icon(
              Icons.cancel,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 180.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Icon(Icons.timer),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Text("Delivery"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Text("Form RS"),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_circle_right_sharp))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 180.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Icon(Icons.calendar_month),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Text("Schedule"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Text("Form RS"),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_circle_right_sharp))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "we will assign the nearest courier to pick up ",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("and deliver as soon as possilble",
                        style: TextStyle(fontSize: 16)),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 90,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Book a",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "Courier",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon:
                                          Icon(Icons.arrow_drop_down_outlined))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                children: [
                                  Center(
                                      child: Text(
                                    "Up to $first",
                                    style: TextStyle(fontSize: 15),
                                  )),
                                  IconButton(
                                      onPressed: () {
                                        showModalBottomSheet(context: context, builder: (context) {
                                          return SizedBox(
                                            height: 200,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        child: TextButton(onPressed: (){
                                                          _number();

                                                        }, child: Text("Up to 5 kg", style: TextStyle(color: Colors.black),)),
                                                      ),
                                                       Container(
                                                        child: TextButton(onPressed: (){
                                                          _second();
                                                        }, child: Text("Up to 10 kg", style: TextStyle(color: Colors.black),)),
                                                      ),
                                                       Container(
                                                        child: TextButton(onPressed: (){
                                                          _third();
                                                        }, child: Text("Up to 15 kg", style: TextStyle(color: Colors.black),)),
                                                      ),
                                                       Container(
                                                        child: TextButton(onPressed: (){
                                                          _fourth();
                                                        }, child: Text("Up to 20 kg", style: TextStyle(color: Colors.black),)),
                                                      )
                                                    ],
                                                  ),
                                                )
                                                
                                              ],

                                            )
                                          );
                                        },);

                                          



                                      },
                                      icon:
                                     Icon(Icons.arrow_drop_down_outlined))
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Hyperlocal is km based tariff. It is the best option ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                            "for the short distance deliveries under 5 km.",
                            style: TextStyle(fontSize: 16)),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Expanded(
                        child: Row(
                          children: [
                            Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 65),
                            Text(
                              "Pickup Point",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 300,
                          child: TextField(
                                  decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                top: 20), 
                            isDense: true,
                            hintText: "Address",
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(
                                  top: 15), 
                              child: IconButton(onPressed: (){
                               showModalBottomSheet(context: context, builder: (context) {
                                          return Container(
                                            child: OpenStreetMapSearchAndPick(
          center: LatLong(23, 89),
          buttonColor: Colors.blue,
          buttonText: 'Set Current Location',
          onPicked: (pickedData) {
            setState(() {
              address = pickedData.address;
            });
            print(pickedData.latLong.latitude);
            print(pickedData.latLong.longitude);
            print(pickedData.address);
          }
          ),
                                          );
                               }
                               );
                              }, icon: Icon(Icons.location_on)),
                            ),
                          )),
                        ),
                        Container(
                          child: Text("Address $address"),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 80,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 189, 221, 236),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.timer),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    "Enter the address to find out\nwhen the courier will arrive"),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 300,
                          child: TextField(
                              decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                top: 20), // add padding to adjust text
                            isDense: true,
                            hintText: "Phone Number",
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(
                                  top: 15), // add padding to adjust icon
                              child: Icon(Icons.person),
                            ),
                          )),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.directions_walk),
                                    SizedBox(width: 5),
                                    Text(
                                      "Instruction for the courier",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.arrow_drop_down)),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      "The courier will buy out the goods and receives the cash or carry out the other instruction"),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Additional Services",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_drop_down))
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          _remove();
                                        },
                                        child: Text("Remove Address",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.blue)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: deliveryPoint(),
              ),
              Container(
                child: deliveryPoint3(),
              ),
              Container(
                child: deliveryPoint4(),
              ),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Add  Delivery  Point")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Text(
                        "Optimize the route",
                        style: TextStyle(fontSize: 17, color: Colors.black87),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Switch(
                          value: value,
                          onChanged: (onChanged) {
                            setState(() {
                              value = onChanged;
                            });
                          })
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Our algorithm will optimize the route points, ensuring\nthe route is more convenient for the courier and cheaper",
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    child: Text(
                                  "Packages",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ))
                              ],
                            ),
                            Container(
                              width: 400,
                              child: TextField(
                                controller: _packages,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      top: 20), // add padding to adjust text
                                  isDense: true,
                                  hintText: "What are you sending ?",
                                  suffixIcon: IconButton(onPressed: (){
                                    setState(() {
                                      update = _packages.text;
                                    });
                                  }, icon: Icon(Icons.check)
                                  ), 
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 85,
                                        child: TextButton(
                                            onPressed: () {    
                                            },
                                            child: Text(
                                              "Document",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[400],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 85,
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Cloth",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[400],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 85,
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Food",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[400],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      Container(
                                         height: 30,
                                        width: 85,
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Groceries",
                                              style:
                                                  TextStyle(color: Colors.black),
                                            )
                                            ),
                                            decoration: BoxDecoration(
                                          color: Colors.grey[400],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),

                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(child: Row(
                                      children: [
                                        Text(update, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                                      ],
                                    ),),
                                  ),
                                  
                                  SizedBox(height: 30,),
                                  Container(
                                    width: 400,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top:
                                                20), 
                                        isDense: true,
                                        hintText: "Parcel value",
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text("We will compensate the value of the lost items within three working\ndays according to the rules. Maximum compensation-50.00",style: TextStyle(fontSize: 12),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 30,),
                                  Container(
                                    width: 400,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top:
                                                20), // add padding to adjust text
                                        isDense: true,
                                        hintText: "Your Phone",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: Row(
                  children: [
                    Column(
      
                      children: [
                      Container(
                        margin: EdgeInsets.only(right: 180),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Additional Services",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20 ),),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                          Text("Prefer the courier with the delivery bag"),
                          SizedBox(width: 10,),
                           Switch(
                          value: value,
                          onChanged: (onChanged) {
                            setState(() {
                              value = onChanged;
                            });
                          })
                          ],
                        ),
                      ),
                       Container(
                        child: Row(
                          children: [
                          Text("Notify recepeints by sms"),
                          SizedBox(width: 80,),
                           Switch(
                          value: value,
                          onChanged: (onChanged) {
                            setState(() {
                              value = onChanged;
                            });
                          })
                          ],
                        ),
                      )
                      ],
                    ),
                  ],
                ),
              ),
                Divider(
                color: Colors.black,
              ),
              
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Payment", style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("Promocode"),
                           
                          ),
                          SizedBox(width: 200,),
                          Container(
                            height: 20,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(child: Text("Apply")),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.money),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Cash"),
                      SizedBox(width: 220,),
                      IconButton(
                                        onPressed: () {
                                          
                                        },
                                        icon: Icon(Icons.arrow_drop_down)),
        
                    ],
                  ),
                ),
              ),
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
