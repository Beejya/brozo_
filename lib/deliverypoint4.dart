import 'package:flutter/material.dart';

class deliveryPoint4 extends StatelessWidget {
  const deliveryPoint4 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Expanded(
                      child: Row(
                        children: [
                          Text(
                            "4",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 65),
                          Text(
                            "Delivery Point",
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
                              top: 20), // add padding to adjust text
                          isDense: true,
                          hintText: "Address",
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(
                                top: 15), // add padding to adjust icon
                            child: Icon(Icons.location_on),
                          ),
                        )
                        ),
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
                                      onPressed: () {},
                                      child: Text("Remove Address",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.blue)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              );
  }
}